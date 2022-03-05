# Package

version       = "1.2.1"
author        = "nim-lang-cn"
description   = "Converts html to karax."
license       = "MIT"
bin           = @["html2karax"]
skipDirs      = @["public","tests"]

# Dependencies

requires "nim >= 1.6.4"
requires "karax >= 1.2.1"
