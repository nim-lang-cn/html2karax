import std / [htmlparser, parseopt, strtabs, strutils, os, xmltree]

const
  karaxTemplate = """
include karax / prelude

proc createDom(): VNode =
  result = buildHtml:$1

setRenderer createDom
"""

const
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

proc addIndent(result: var string, indent: int, addNewLines: bool) =
  if addNewLines:
    result.add("\n")
  for i in 1 .. indent:
    result.add(' ')

proc renderImpl*(result: var string, n: XmlNode, indent = 0, indWidth = 2,
          addNewLines = true) =
  if n != nil:
    case n.kind
    of xnElement:
      if indent > 0:
        result.addIndent(indent, addNewLines)
      result.add(toVNode(n.tag))
      result.add('(')
      if n.attrs != nil:
        var comma = false
        for key, val in pairs(n.attrs):
          if comma: result.add(", ")
          else: comma = true
          let isKeyw = key in nimKeyw
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
          result.renderImpl(n[i], indent+indWidth, indWidth, addNewLines)
    of xnText:
      let text = n.text.strip
      if text.len > 0:
        if indent > 0:
          result.addIndent(indent, addNewLines)
        result.add("text \"")
        result.add(text)
        result.add('"')
    else: discard

const
  Usage = """html2karax - Convert static html to Karax DSL code.

Usage:
  html2karax [options] htmlfile
Options:
  --out:file    set the output file (default: same name as the input file)
  --help        show this help
"""

proc writeHelp() =
  stdout.write(Usage)
  stdout.flushFile()
  quit(0)

proc main =
  var infile, outfile: string
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
    outfile = infile.changeFileExt("nim")

  let parsed = loadHtml(infile)
  var result = ""
  renderImpl(result, parsed[0], 4)

  writeFile(outfile, karaxTemplate.format(result))

main()
