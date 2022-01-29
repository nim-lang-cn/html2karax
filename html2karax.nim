import std / [algorithm, htmlparser, parseopt, strtabs, strutils, os, xmltree, wordwrap]

const
  usage = """
html2karax - Convert static html to Karax DSL code.

Usage:
  html2karax [options] htmlfile
Options:
  --out:file      set the output file (default: the same name as the input file, .nim extension)
  --help          show this help
  --ssr           output code appropriate for server side HTML rendering
  --indent:N[=2]  set the number of spaces that is used for indentation
  --maxLineLen:N  set the desired maximum line length (default: 80)
"""

  karaxTmpl = """
include karax / prelude

proc createDom(): VNode =
  result = buildHtml:$1

setRenderer createDom
"""

  karaxSsrTmpl = """
import karax / [karaxdsl, vdom]

proc render(): string =
  let vnode = buildHtml:$1
  result = $$vnode
"""

  nimKeyw = ["addr", "and", "as", "asm",
    "bind", "block", "break",
    "case", "cast", "concept", "const", "continue", "converter",
    "defer", "discard", "distinct", "div", "do",
    "elif", "else", "end", "enum", "except", "export",
    "finally", "for", "from", "func",
    "if", "import", "in", "include", "interface", "is", "isnot", "iterator",
    "let",
    "macro", "method", "mixin", "mod",
    "nil", "not", "notin",
    "object", "of", "or", "out",
    "proc", "ptr",
    "raise", "ref", "return",
    "shl", "shr", "static",
    "template", "try", "tuple", "type",
    "using",
    "var",
    "when", "while",
    "xor",
    "yield"]

proc isKeyword*(s: string): bool {.inline.} =
  binarySearch(nimKeyw, s) >= 0 # assumes sorted

type
  Options = object # from command-line
    indWidth: Natural
    maxLineLen: Positive

proc toVNode(tag: sink string): string =
  # Translates to karax VNode tags, most remain the same.
  case tag
  of "div":
    result = "tdiv"
  of "s":
    result = "strikethrough"
  of "var":
    result = "`var`"
  of "i":
    result = "italic"
  of "b":
    result = "bold"
  of "u":
    result = "underlined"
  of "object":
    result = "`object`"
  of "discard":
    result = "`discard`"
  of "set":
    result = "`set`"
  of "text":
    result = "stext"
  else:
    result = tag

proc addIndent(result: var string, indent: int) =
  result.add("\n")
  for i in 1..indent:
    result.add(' ')

proc myRender(result: var string, b: string, escapeQuotes, stripSpaces: bool) =
  # Primarily used to remove spaces at line end. Also escapes '"' and
  # omits in-between multiple spaces when appropriate.
  let L = b.len
  var i = 0
  while i < L:
    let ch = b[i]
    if escapeQuotes and ch == '\"':
      result.add("\\\"")
    elif ch == ' ':
      let j = i
      while i < L and b[i] == ' ': inc i
      if i >= L: discard
      elif b[i] == '\n':
        result.add('\n')
      else:
        if stripSpaces: result.add(' ')
        else:
          for ii in j..i-1:
            result.add(' ')
        dec i
    elif ch == '\n':
      result.add('\n')
    else:
      result.add(ch)
    inc(i)

proc renderText(result: var string, text: string; wsInsignif: bool) =
  let isSingleLine = countLines(text) == 1
  if isSingleLine:
    result.add('"')
  else:
    result.add("\"\"\"")
    if wsInsignif: result.add('\n') # verbatim multiline text that starts with a \n
  myRender(result, text, isSingleLine, wsInsignif)
  if isSingleLine:
    result.add('"')
  else:
    result.add("\"\"\"")

proc renderImpl(result: var string, n: XmlNode, backlog: var string, indent: int;
    isVerbatim: bool; opt: Options) =
  if n != nil:
    case n.kind
    of xnElement:
      let isVerbatim = isVerbatim or n.tag in ["script", "pre"]
      let isDocRoot = n.tag == "document" # Hide document pseudo-tag
      if not isDocRoot:
        if indent > 0:
          result.addIndent(indent)
        result.add(toVNode(n.rawTag))
        if n.attrs != nil:
          result.add('(')
          var comma = false
          for key, val in pairs(n.attrs):
            if comma: result.add(", ")
            else: comma = true
            let isKeyw = isKeyword(key)
            if isKeyw:
              result.add('`')
            result.add(key)
            if isKeyw:
              result.add('`')
            result.add(" = \"")
            #myRender(result, val, true)
            result.add(val)
            result.add('"')
            if key == "style":
              result.add(".toCss")
          result.add(')')
        elif n.len == 0: # An empty element without attributes
          result.add("()")
      if n.len != 0:
        if not isDocRoot: result.add(':')
        let indent = if isDocRoot: indent else: indent+opt.indWidth
        for i in 0 ..< n.len:
          renderImpl(result, n[i], backlog, indent, isVerbatim, opt)
          # Render grouped text nodes, if at the end or next is not a text node.
          if backlog.len > 0 and (i+1 >= n.len or n[i+1].kind != xnText):
            if indent > 0:
              result.addIndent(indent)
            result.add("text ")
            let tmp = backlog.dedent
            if isVerbatim:
              renderText(result, tmp, strip = false)
            else:
              let wrapped = wrapWords(tmp, opt.maxLineLen, splitLongWords = false)
              renderText(result, wrapped, strip = true)
            backlog.setLen(0)
    of xnText:
      if isVerbatim or not isEmptyOrWhitespace(n.text): # Prevent outputting empty text
        backlog.add n.text
    of xnComment:
      if not isEmptyOrWhitespace(n.text):
        if indent > 0: # All comments are indented
          result.addIndent(indent)
        if countLines(n.text) == 1:
          result.add('#')
          myRender(result, n.text, escape = true, strip = false)
        else:
          result.add("#[")
          # Unindent text before indenting it again!
          myRender(result, indent(n.text.dedent, indent), escape = false, strip = false)
          stripLineEnd(result) # comment end tag in the next line
          if indent > 0:
            result.addIndent(indent)
          result.add("]#")
    else: discard

proc render(n: XmlNode, indent = 0, isVerbatim: bool, opt: Options): string =
  result = ""
  var backlog = ""
  renderImpl(result, n, backlog, indent, isVerbatim, opt)

proc writeHelp() =
  stdout.write(usage)
  stdout.flushFile()
  quit(0)

proc main =
  var infile, outfile: string
  var ssr = false
  var opt = Options(indWidth: 2, maxLineLen: 80)
  for kind, key, val in getopt():
    case kind
    of cmdArgument:
      infile = key.addFileExt(".html")
    of cmdLongOption, cmdShortOption:
      case normalize(key)
      of "help", "h": writeHelp()
      of "output", "o", "out": outfile = val
      of "ssr": ssr = true
      of "indent": opt.indWidth = parseInt(val)
      of "maxlinelen": opt.maxLineLen = parseInt(val)
      else: writeHelp()
    of cmdEnd: assert false # cannot happen

  if infile.len == 0:
    quit "[Error] no input file."

  if outfile.len == 0:
    outfile = infile.changeFileExt(".nim")

  let parsed = loadHtml(infile)
  let result = render(parsed, 2*opt.indWidth, false, opt) # Templates start with the same indentation
  writeFile(outfile, if ssr: karaxSsrTmpl % result else: karaxTmpl % result)

main()
