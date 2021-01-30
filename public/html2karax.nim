import std / [algorithm, htmlparser, parseopt, strtabs, strutils, os, xmltree]

const
  usage = """html2karax - Convert static html to Karax DSL code.

Usage:
  html2karax [options] htmlfile
Options:
  --out:file    set the output file (default: the same name as the input file, .nim extension)
  --help        show this help
"""

  karaxTmpl = """
include karax / prelude

proc createDom(): VNode =
  result = buildHtml:$1

setRenderer createDom
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

proc toVNode(tag: string): string =
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
  else:
    result = tag

proc addIndent(result: var string, indent: int) =
  result.add("\n")
  for i in 1 .. indent:
    result.add(' ')

proc renderImpl(result: var string, n: XmlNode, indent, indWidth: int) =
  if n != nil:
    case n.kind
    of xnElement:
      if indent > 0:
        result.addIndent(indent)
      result.add(toVNode(n.tag))
      result.add('(')
      if n.attrs != nil:
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
      if n.len == 0:
        result.add(')')
      else:
        result.add("):")
        for i in 0 ..< n.len:
          renderImpl(result, n[i], indent+indWidth, indWidth)
    of xnText:
      let text = n.text.strip
      if text.len > 0:
        if indent > 0:
          result.addIndent(indent)
        result.add("text \"")
        result.add(text)
        result.add('"')
    else: discard

proc render(n: XmlNode, indent = 0, indWidth = 2): string =
  result = ""
  renderImpl(result, n, indent, indWidth)

proc writeHelp() =
  stdout.write(usage)
  stdout.flushFile()
  quit(0)

proc main =
  var infile, outfile: string
  let indWidth = 2
  for kind, key, val in getopt():
    case kind
    of cmdArgument:
      infile = key.addFileExt(".html")
    of cmdLongOption, cmdShortOption:
      case normalize(key)
      of "help", "h": writeHelp()
      of "output", "o", "out": outfile = val
      else: writeHelp()
    of cmdEnd: assert(false) # cannot happen

  if infile.len == 0:
    quit "[Error] no input file."

  if outfile.len == 0:
    outfile = infile.changeFileExt(".nim")

  let parsed = loadHtml(infile)
  let result = render(parsed, 2*indWidth, indWidth)
  writeFile(outfile, karaxTmpl % result)

main()
