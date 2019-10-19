# html2karax
把静态html转换为karax单面应用或服务端渲染

## Usage
nim c -r --hints:off -w:off tut1.nim
把tut1.html转换成tut1karax.nim

nim js --hints:off -w:off tut1karax.nim
把tut1karax.nim编译成js

通过浏览器访问index.html
