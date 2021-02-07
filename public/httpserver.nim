import jester, os, re, strutils, strformat
import jester/private/utils

settings:
    port = Port(8002)

routes:
    get re"/(.*)":
        cond request.matches[0].splitFile.ext == ""
        resp(Http200, {"Access-Control-Allow-Origin": "*", "Content-Type":"text/html"}, readFile("public/tut1.html"))
    get "/@name":
        var name = @"name"
        echo name
        resp(Http200, {"Access-Control-Allow-Origin": "*"}, readFile(&"videos/{name}"))

