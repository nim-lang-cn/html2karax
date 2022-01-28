import std / [algorithm, htmlparser, parseopt, strtabs, strutils, os, xmltree, wordwrap]

const
  usage = """
html2karax - Convert static html to Karax DSL code.

Usage:
  html2karax [options] htmlfile
Options:
  --out:file      set the output file (default: the same name as the input file, .nim extension)
  --help          show this help
  --raw           do not attempt to format text
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

type
  Options = object
    indWidth: Natural
    maxLineLen: Positive

proc toVNode(tag: sink string): string =
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

template renderText(text: string) =
  let isSingleLine = countLines(text) == 1
  if isSingleLine:
    result.add('"')
  else:
    result.add("\"\"\"\n")
  result.add(text)
  if isSingleLine:
    result.add('"')
  else:
    result.add("\"\"\"")

proc renderImpl(result: var string, n: XmlNode, b: var string, indent: int; rawText: bool; opt: Options) =
  if n != nil:
    case n.kind
    of xnElement:
      let rawText = rawText or n.tag in ["script", "pre"]
      let isDocRoot = n.tag == "document" # Hide document pseudo tag
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
            let isKeyw = binarySearch(nimKeyw, key) >= 0
            if isKeyw:
              result.add('`')
            result.add(key)
            if isKeyw:
              result.add('`')
            result.add(" = \"")
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
          renderImpl(result, n[i], b, indent, rawText, opt)
          # Render grouped text nodes
          if b.len > 0 and (i+1 >= n.len or n[i+1].kind != xnText):
            if indent > 0:
              result.addIndent(indent)
            result.add("text ")
            if rawText:
              renderText(b)
            else:
              let wrapped = wrapWords(b, opt.maxLineLen, false)
              renderText(wrapped)
            b.setLen(0)
    of xnText:
      if not isEmptyOrWhitespace(n.text):
        b.add n.text
    of xnComment:
      if not isEmptyOrWhitespace(n.text):
        if indent > 0:
          result.addIndent(indent)
        if countLines(n.text) == 1:
          result.add('#')
          result.add(n.text)
        else:
          result.add("#[")
          result.add(indent(n.text, indent))
          if indent > 0:
            result.addIndent(indent)
          result.add("]#")
    else: discard

proc render(n: XmlNode, indent = 0, rawText: bool, opt: Options): string =
  result = ""
  var backlog = ""
  renderImpl(result, n, backlog, indent, rawText, opt)

proc writeHelp() =
  stdout.write(usage)
  stdout.flushFile()
  quit(0)

proc main =
  var infile, outfile: string
  var ssr, rawText = false
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
      of "raw", "r": rawText = true
      of "indent": opt.indWidth = parseInt(val)
      of "maxlinelen": opt.maxLineLen = parseInt(val)
      else: writeHelp()
    of cmdEnd: assert false # cannot happen

  if infile.len == 0:
    quit "[Error] no input file."

  if outfile.len == 0:
    outfile = infile.changeFileExt(".nim")

  let parsed = loadHtml(infile)
  let result = render(parsed, 2*opt.indWidth, rawText, opt)
  writeFile(outfile, if ssr: karaxSsrTmpl % result else: karaxTmpl % result)

main()
