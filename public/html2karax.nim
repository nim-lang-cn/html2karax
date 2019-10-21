import htmlparser
import xmltree except escape
import strtabs  
import strutils 
import strformat
import re
import unicode except strip
import sequtils
import parseopt

var file: string
var p = parseopt.initOptParser()

while true:
  parseopt.next(p)
  case p.kind
  of cmdEnd: break
  of cmdLongOption, cmdShortOption:
    echo p.key
  of cmdArgument:
    file = p.key

var karaxHtml = ""

var tut1 = readFile(file & ".html")

var entity = tut1.findAll(re"&(\w+);")
tut1 = tut1.multiReplace(entity.zip(entity.mapIt(entityToRune(it.substr(1,it.len-2)).toUTF8)))

var html = parseHtml tut1
var body = html.findAll("body")[0][1]


var incremental: int = 2
template to(t: string) {.dirty.} = 
  if t == "pre" and body[0].kind == xnText and body[0].text == "\n": body.delete 0
  var localIndent = incremental
  karaxHtml.add indent("\n" &  t &  "(", localIndent)
  var attr: seq[string]
  if body.attrs != nil:
    for name,value in body.attrs.pairs:
      attr.add &"{name}=\"{value}\""
  var suffix = if body.len != 0 :"):" else: ")"
  karaxHtml.add attr.join(",") & suffix

  for i in 0..body.len-1:
    if body[i].kind == xnElement and body[i].len != 0:
        incremental.inc(2)
        getXmlNode body[i]
        incremental = localIndent
    elif body[i].kind == xnText :
      var text = body[i].innerText
      if {'\n','\"','\\'} in text:
        # if text == "\n": continue
        text = text.escape
        if text.find(re"\\x0A") > 1:
          text = text.replace(re"\\x0A\s+"," ")
        karaxHtml.add indent("\ntext t " & text , incremental+2)
      else:
        karaxHtml.add indent("\ntext t \"" & text & "\"" , incremental+2)
      

proc getXmlNode(body: var XmlNode) = 
  case body.tag
  of "a": to "a"
  of "abbr": to "abbr"
  of "acronym": to "acronym"
  of "address": to "address"
  of "applet": to "applet"
  of "area": to "area"
  of "article": to "article"
  of "aside": to "aside"
  of "audio": to "audio"
  of "b": to "bold"
  of "base": to "base"
  of "basefont": to "basefont"
  of "bdi": to "bdi"
  of "bdo": to "bdo"
  of "big": to "big"
  of "blockquote": to "blockquote"
  of "body": to "body"
  of "br": to "br"
  of "button": to "button"
  of "canvas": to "canvas"
  of "caption": to "caption"
  of "center": to "center"
  of "cite": to "cite"
  of "code": to "code"
  of "col": to "col"
  of "colgroup": to "colgroup"
  of "command": to "command"
  of "datalist": to "datalist"
  of "dd": to "dd"
  of "del": to "del"
  of "details": to "details"
  of "dfn": to "dfn"
  of "dialog": to "dialog"
  of "div": to "tdiv"
  of "dir": to "dir"
  of "dl": to "dl"
  of "dt": to "dt"
  of "em": to "em"
  of "embed": to "embed"
  of "fieldset": to "fieldset"
  of "figcaption": to "figcaption"
  of "figure": to "figure"
  of "font": to "font"
  of "footer": to "footer"
  of "form": to "form"
  of "frame": to "frame"
  of "frameset": to "frameset"
  of "h1": to "h1"
  of "h2": to "h2"
  of "h3": to "h3"
  of "h4": to "h4"
  of "h5": to "h5"
  of "h6": to "h6"
  of "head": to "head"
  of "header": to "header"
  of "hgroup": to "hgroup"
  of "html": to "html"
  of "hr": to "hr"
  of "i": to "i"
  of "iframe": to "iframe"
  of "img": to "img"
  of "input": to "input"
  of "ins": to "ins"
  of "isindex": to "isindex"
  of "kbd": to "kbd"
  of "keygen": to "keygen"
  of "label": to "label"
  of "legend": to "legend"
  of "li": to "li"
  of "link": to "link"
  of "map": to "map"
  of "mark": to "mark"
  of "menu": to "menu"
  of "meta": to "meta"
  of "meter": to "meter"
  of "nav": to "nav"
  of "nobr": to "nobr"
  of "noframes": to "noframes"
  of "noscript": to "noscript"
  of "object": to "object"
  of "ol": to "ol"
  of "optgroup": to "optgroup"
  of "option": to "option"
  of "output": to "output"
  of "p": to "p"
  of "param": to "param"
  of "pre": to "pre"
  of "progress": to "progress"
  of "q": to "q"
  of "rp": to "rp"
  of "rt": to "rt"
  of "ruby": to "ruby"
  of "s": to "s"
  of "samp": to "samp"
  of "script": to "script"
  of "section": to "section"
  of "select": to "select"
  of "small": to "small"
  of "source": to "source"
  of "span": to "span"
  of "strike": to "strike"
  of "strong": to "strong"
  of "style": to "style"
  of "sub": to "sub"
  of "summary": to "summary"
  of "sup": to "sup"
  of "table": to "table"
  of "tbody": to "tbody"
  of "td": to "td"
  of "textarea": to "textarea"
  of "tfoot": to "tfoot"
  of "th": to "th"
  of "thead": to "thead"
  of "time": to "time"
  of "title": to "title"
  of "tr": to "tr"
  of "track": to "track"
  of "tt": to "tt"
  of "u": to "u"
  of "ul": to "ul"
  of "var": to "var"
  of "video": to "video"
  of "wbr": to "wbr"
  else: discard


getXmlNode(body)

var karaxTemplate = &"""
import karax/[karaxdsl,vdom, karax, vstyles]
import translations

proc createDom():VNode = 
  buildHtml {karaxHtml.strip()}
    tdiv(style="position:fixed;right:0;top:5%;"):
      a(onclick = zhCN):span: text "Chinese |"
      a(onclick = enUS):span: text " English"  
  
setRenderer createDom"""
var outfile = file & "karax.nim"
writeFile(outfile,karaxTemplate)

