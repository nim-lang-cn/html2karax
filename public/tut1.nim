include karax / prelude

proc createDom(): VNode =
  result = buildHtml:
    document:
      html(lang = "en", xml:lang = "en", xmlns = "http://www.w3.org/1999/xhtml"):
        head:
          meta(content = "text/html; charset=utf-8", http-equiv = "Content-Type")
          meta(content = "width=device-width, initial-scale=1.0", name = "viewport")
          link(rel = "shortcut icon", href = "data:image/x-icon;base64,AAABAAEAEBAAAAEAIABoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AAAAAAUAAAAF////AP///wD///8A////AP///wD///8A////AP///wD///8A////AAAAAAIAAABbAAAAlQAAAKIAAACbAAAAmwAAAKIAAACVAAAAWwAAAAL///8A////AP///wD///8A////AAAAABQAAADAAAAAYwAAAA3///8A////AP///wD///8AAAAADQAAAGMAAADAAAAAFP///wD///8A////AP///wAAAACdAAAAOv///wD///8A////AP///wD///8A////AP///wD///8AAAAAOgAAAJ3///8A////AP///wAAAAAnAAAAcP///wAAAAAoAAAASv///wD///8A////AP///wAAAABKAAAAKP///wAAAABwAAAAJ////wD///8AAAAAgQAAABwAAACIAAAAkAAAAJMAAACtAAAAFQAAABUAAACtAAAAkwAAAJAAAACIAAAAHAAAAIH///8A////AAAAAKQAAACrAAAAaP///wD///8AAAAARQAAANIAAADSAAAARf///wD///8AAAAAaAAAAKsAAACk////AAAAADMAAACcAAAAnQAAABj///8A////AP///wAAAAAYAAAAGP///wD///8A////AAAAABgAAACdAAAAnAAAADMAAAB1AAAAwwAAAP8AAADpAAAAsQAAAE4AAAAb////AP///wAAAAAbAAAATgAAALEAAADpAAAA/wAAAMMAAAB1AAAAtwAAAOkAAAD/AAAA/wAAAP8AAADvAAAA3gAAAN4AAADeAAAA3gAAAO8AAAD/AAAA/wAAAP8AAADpAAAAtwAAAGUAAAA/AAAA3wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAADfAAAAPwAAAGX///8A////AAAAAEgAAADtAAAAvwAAAL0AAADGAAAA7wAAAO8AAADGAAAAvQAAAL8AAADtAAAASP///wD///8A////AP///wD///8AAAAAO////wD///8A////AAAAAIcAAACH////AP///wD///8AAAAAO////wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A//8AAP//AAD4HwAA7/cAAN/7AAD//wAAoYUAAJ55AACf+QAAh+EAAAAAAADAAwAA4AcAAP5/AAD//wAA//8AAA==")
          link(`type` = "text/css", rel = "stylesheet", href = "https://fonts.googleapis.com/css?family=Lato:400,600,900")
          link(`type` = "text/css", rel = "stylesheet", href = "https://fonts.googleapis.com/css?family=Source+Code+Pro:400,500,600")
          title:
            text "Nim Tutorial (Part I)"
          style(`type` = "text/css"):
            text "/*\nStylesheet for use with Docutils/rst2html.\n\nSee http://docutils.sf.net/docs/howto/html-stylesheets.html for how to\ncustomize this style sheet.\n\nModified from Chad Skeeters' rst2html-style\nhttps://bitbucket.org/cskeeters/rst2html-style/\n\nModified by Boyd Greenfield and narimiran\n*/\n\n    html {\n      font-size: 100%;\n      -webkit-text-size-adjust: 100%;\n      -ms-text-size-adjust: 100%;\n    }\n\n    body {\n      font-family: \"Lato\", \"Helvetica Neue\", \"HelveticaNeue\", Helvetica, Arial, sans-serif;\n      font-weight: 400;\n      font-size: 1.125em;\n      line-height: 1.5;\n      color: #222;\n      background-color: #FCFCFC;\n    }\n\n    /* Skeleton grid */\n    .container {\n      position: relative;\n      width: 100%;\n      max-width: 1050px;\n      margin: 0 auto;\n      padding: 0;\n      box-sizing: border-box;\n    }\n\n    .column,\n    .columns {\n      width: 100%;\n      float: left;\n      box-sizing: border-box;\n      margin-left: 1%;\n    }\n\n    .column:first-child,\n    .columns:first-child {\n      margin-left: 0;\n    }\n\n    .three.columns {\n      width: 19%;\n    }\n\n    .nine.columns {\n      width: 80.0%;\n    }\n\n    .twelve.columns {\n      width: 100%;\n      margin-left: 0;\n    }\n\n    @media screen and (max-width: 860px) {\n      .three.columns {\n        display: none;\n      }\n\n      .nine.columns {\n        width: 98.0%;\n      }\n\n      body {\n        font-size: 1em;\n        line-height: 1.35;\n      }\n    }\n\n    cite {\n      font-style: italic !important;\n    }\n\n\n    /* Nim search input */\n    div#searchInputDiv {\n      margin-bottom: 1em;\n    }\n\n    input#searchInput {\n      width: 80%;\n    }\n\n    /*\n * Some custom formatting for input forms.\n * This also fixes input form colors on Firefox with a dark system theme on Linux.\n */\n    input {\n      -moz-appearance: none;\n      color: #333;\n      background-color: #f8f8f8;\n      border: 1px solid #aaa;\n      font-family: \"Lato\", \"Helvetica Neue\", \"HelveticaNeue\", Helvetica, Arial, sans-serif;\n      font-size: 0.9em;\n      padding: 6px;\n    }\n\n    input:focus {\n      border: 1px solid #1fa0eb;\n      box-shadow: 0 0 2px #1fa0eb;\n    }\n\n    /* Docgen styles */\n    /* Links */\n    a {\n      color: #07b;\n      text-decoration: none;\n    }\n\n    a span.Identifier {\n      text-decoration: underline;\n      text-decoration-color: #aab;\n    }\n\n    a.reference-toplevel {\n      font-weight: bold;\n    }\n\n    a.toc-backref {\n      text-decoration: none;\n      color: #222;\n    }\n\n    a.link-seesrc {\n      color: #607c9f;\n      font-size: 0.9em;\n      font-style: italic;\n    }\n\n    a:hover,\n    a:focus {\n      color: #607c9f;\n      text-decoration: underline;\n    }\n\n    a:hover span.Identifier {\n      color: #607c9f;\n    }\n\n\n    sub,\n    sup {\n      position: relative;\n      font-size: 75%;\n      line-height: 0;\n      vertical-align: baseline;\n    }\n\n    sup {\n      top: -0.5em;\n    }\n\n    sub {\n      bottom: -0.25em;\n    }\n\n    img {\n      width: auto;\n      height: auto;\n      max-width: 100%;\n      vertical-align: middle;\n      border: 0;\n      -ms-interpolation-mode: bicubic;\n    }\n\n    @media print {\n      * {\n        color: black !important;\n        text-shadow: none !important;\n        background: transparent !important;\n        box-shadow: none !important;\n      }\n\n      a,\n      a:visited {\n        text-decoration: underline;\n      }\n\n      a[href]:after {\n        content: \" (\"attr(href) \")\";\n      }\n\n      abbr[title]:after {\n        content: \" (\"attr(title) \")\";\n      }\n\n      .ir a:after,\n      a[href^=\"javascript:\"]:after,\n      a[href^=\"#\"]:after {\n        content: \"\";\n      }\n\n      pre,\n      blockquote {\n        border: 1px solid #999;\n        page-break-inside: avoid;\n      }\n\n      thead {\n        display: table-header-group;\n      }\n\n      tr,\n      img {\n        page-break-inside: avoid;\n      }\n\n      img {\n        max-width: 100% !important;\n      }\n\n      @page {\n        margin: 0.5cm;\n      }\n\n      h1 {\n        page-break-before: always;\n      }\n\n      h1.title {\n        page-break-before: avoid;\n      }\n\n      p,\n      h2,\n      h3 {\n        orphans: 3;\n        widows: 3;\n      }\n\n      h2,\n      h3 {\n        page-break-after: avoid;\n      }\n    }\n\n\n    p {\n      margin-top: 0.5em;\n      margin-bottom: 0.5em;\n    }\n\n    small {\n      font-size: 85%;\n    }\n\n    strong {\n      font-weight: 600;\n      font-size: 0.95em;\n      color: #3c3c3c;\n    }\n\n    em {\n      font-style: italic;\n    }\n\n    h1 {\n      font-size: 1.8em;\n      font-weight: 400;\n      padding-bottom: .25em;\n      border-bottom: 1px solid #aaa;\n      margin-top: 2.5em;\n      margin-bottom: 1em;\n      line-height: 1.2em;\n    }\n\n    h1.title {\n      padding-bottom: 1em;\n      border-bottom: 0px;\n      font-size: 2.5em;\n      text-align: center;\n      font-weight: 900;\n      margin-top: 0.75em;\n      margin-bottom: 0em;\n    }\n\n    h2 {\n      font-size: 1.3em;\n      margin-top: 2em;\n    }\n\n    h2.subtitle {\n      text-align: center;\n    }\n\n    h3 {\n      font-size: 1.125em;\n      font-style: italic;\n      margin-top: 1.5em;\n    }\n\n    h4 {\n      font-size: 1.125em;\n      margin-top: 1em;\n    }\n\n    h5 {\n      font-size: 1.125em;\n      margin-top: 0.75em;\n    }\n\n    h6 {\n      font-size: 1.1em;\n    }\n\n\n    ul,\n    ol {\n      padding: 0;\n      margin-top: 0.5em;\n      margin-left: 0.75em;\n    }\n\n    ul ul,\n    ul ol,\n    ol ol,\n    ol ul {\n      margin-bottom: 0;\n      margin-left: 1.25em;\n    }\n\n    li {\n      list-style-type: circle;\n    }\n\n    ul.simple-boot li {\n      list-style-type: none;\n      margin-left: 0em;\n      margin-bottom: 0.5em;\n    }\n\n    ol.simple>li,\n    ul.simple>li {\n      margin-bottom: 0.25em;\n      margin-left: 0.4em\n    }\n\n    ul.simple.simple-toc>li {\n      margin-top: 1em;\n    }\n\n    ul.simple-toc {\n      list-style: none;\n      font-size: 0.9em;\n      margin-left: -0.3em;\n      margin-top: 1em;\n    }\n\n    ul.simple-toc>li {\n      list-style-type: none;\n    }\n\n    ul.simple-toc-section {\n      list-style-type: circle;\n      margin-left: 1em;\n      color: #6c9aae;\n    }\n\n\n    ol.arabic {\n      list-style: decimal;\n    }\n\n    ol.loweralpha {\n      list-style: lower-alpha;\n    }\n\n    ol.upperalpha {\n      list-style: upper-alpha;\n    }\n\n    ol.lowerroman {\n      list-style: lower-roman;\n    }\n\n    ol.upperroman {\n      list-style: upper-roman;\n    }\n\n    ul.auto-toc {\n      list-style-type: none;\n    }\n\n\n    dl {\n      margin-bottom: 1.5em;\n    }\n\n    dt {\n      margin-bottom: -0.5em;\n      margin-left: 0.0em;\n    }\n\n    dd {\n      margin-left: 2.0em;\n      margin-bottom: 3.0em;\n      margin-top: 0.5em;\n    }\n\n\n    hr {\n      margin: 2em 0;\n      border: 0;\n      border-top: 1px solid #aaa;\n    }\n\n    blockquote {\n      font-size: 0.9em;\n      font-style: italic;\n      padding-left: 0.5em;\n      margin-left: 0;\n      border-left: 5px solid #bbc;\n    }\n\n    .pre {\n      font-family: \"Source Code Pro\", Monaco, Menlo, Consolas, \"Courier New\", monospace;\n      font-weight: 500;\n      font-size: 0.85em;\n      background-color: #f0f3ff;\n      padding-left: 3px;\n      padding-right: 3px;\n      border-radius: 4px;\n    }\n\n    pre {\n      font-family: \"Source Code Pro\", Monaco, Menlo, Consolas, \"Courier New\", monospace;\n      color: #222;\n      font-weight: 500;\n      display: inline-block;\n      box-sizing: border-box;\n      min-width: 100%;\n      padding: 0.5em;\n      margin-top: 0.5em;\n      margin-bottom: 0.5em;\n      font-size: 0.85em;\n      white-space: pre !important;\n      overflow-y: hidden;\n      overflow-x: visible;\n      background-color: ghostwhite;\n      border: 1px solid #dde;\n      -webkit-border-radius: 6px;\n      -moz-border-radius: 6px;\n      border-radius: 6px;\n    }\n\n    .pre-scrollable {\n      max-height: 340px;\n      overflow-y: scroll;\n    }\n\n\n    /* Nim line-numbered tables */\n    .line-nums-table {\n      width: 100%;\n      table-layout: fixed;\n    }\n\n    table.line-nums-table {\n      border-radius: 4px;\n      border: 1px solid #cccccc;\n      background-color: ghostwhite;\n      border-collapse: separate;\n      margin-top: 15px;\n      margin-bottom: 25px;\n    }\n\n    .line-nums-table tbody {\n      border: none;\n    }\n\n    .line-nums-table td pre {\n      border: none;\n      background-color: transparent;\n    }\n\n    .line-nums-table td.blob-line-nums {\n      width: 28px;\n    }\n\n    .line-nums-table td.blob-line-nums pre {\n      color: #b0b0b0;\n      -webkit-filter: opacity(75%);\n      text-align: right;\n      border-color: transparent;\n      background-color: transparent;\n      padding-left: 0px;\n      margin-left: 0px;\n      padding-right: 0px;\n      margin-right: 0px;\n    }\n\n\n    table {\n      max-width: 100%;\n      background-color: transparent;\n      margin-top: 0.5em;\n      margin-bottom: 1.5em;\n      border-collapse: collapse;\n      border-color: #ccc;\n      border-spacing: 0;\n      font-size: 0.9em;\n    }\n\n    table th,\n    table td {\n      padding: 0px 0.5em 0px;\n    }\n\n    table th {\n      background-color: #e8e8e8;\n      font-weight: bold;\n    }\n\n    table th.docinfo-name {\n      background-color: transparent;\n    }\n\n    table tr:hover {\n      background-color: ghostwhite;\n    }\n\n\n    /* rst2html default used to remove borders from tables and images */\n    .borderless,\n    table.borderless td,\n    table.borderless th {\n      border: 0;\n    }\n\n    table.borderless td,\n    table.borderless th {\n      /* Override padding for \"table.docutils td\" with \"! important\".\n     The right padding separates the table cells. */\n      padding: 0 0.5em 0 0 !important;\n    }\n\n    .first {\n      /* Override more specific margin styles with \"! important\". */\n      margin-top: 0 !important;\n    }\n\n    .last,\n    .with-subtitle {\n      margin-bottom: 0 !important;\n    }\n\n    .hidden {\n      display: none;\n    }\n\n    blockquote.epigraph {\n      margin: 2em 5em;\n    }\n\n    dl.docutils dd {\n      margin-bottom: 0.5em;\n    }\n\n    object[type=\"image/svg+xml\"],\n    object[type=\"application/x-shockwave-flash\"] {\n      overflow: hidden;\n    }\n\n\n    div.figure {\n      margin-left: 2em;\n      margin-right: 2em;\n    }\n\n    div.footer,\n    div.header {\n      clear: both;\n      text-align: center;\n      color: #666;\n      font-size: smaller;\n    }\n\n    div.footer {\n      padding-top: 5em;\n    }\n\n    div.line-block {\n      display: block;\n      margin-top: 1em;\n      margin-bottom: 1em;\n    }\n\n    div.line-block div.line-block {\n      margin-top: 0;\n      margin-bottom: 0;\n      margin-left: 1.5em;\n    }\n\n    div.topic {\n      margin: 2em;\n    }\n\n    div.search_results {\n      background-color: antiquewhite;\n      margin: 3em;\n      padding: 1em;\n      border: 1px solid #4d4d4d;\n    }\n\n    div#global-links ul {\n      margin-left: 0;\n      list-style-type: none;\n    }\n\n    div#global-links>simple-boot {\n      margin-left: 3em;\n    }\n\n    hr.docutils {\n      width: 75%;\n    }\n\n    img.align-left,\n    .figure.align-left,\n    object.align-left {\n      clear: left;\n      float: left;\n      margin-right: 1em;\n    }\n\n    img.align-right,\n    .figure.align-right,\n    object.align-right {\n      clear: right;\n      float: right;\n      margin-left: 1em;\n    }\n\n    img.align-center,\n    .figure.align-center,\n    object.align-center {\n      display: block;\n      margin-left: auto;\n      margin-right: auto;\n    }\n\n    .align-left {\n      text-align: left;\n    }\n\n    .align-center {\n      clear: both;\n      text-align: center;\n    }\n\n    .align-right {\n      text-align: right;\n    }\n\n    /* reset inner alignment in figures */\n    div.align-right {\n      text-align: inherit;\n    }\n\n    p.attribution {\n      text-align: right;\n      margin-left: 50%;\n    }\n\n    p.caption {\n      font-style: italic;\n    }\n\n    p.credits {\n      font-style: italic;\n      font-size: smaller;\n    }\n\n    p.label {\n      white-space: nowrap;\n    }\n\n    p.rubric {\n      font-weight: bold;\n      font-size: larger;\n      color: maroon;\n      text-align: center;\n    }\n\n    p.topic-title {\n      font-weight: bold;\n    }\n\n    pre.address {\n      margin-bottom: 0;\n      margin-top: 0;\n      font: inherit;\n    }\n\n    pre.literal-block,\n    pre.doctest-block,\n    pre.math,\n    pre.code {\n      margin-left: 2em;\n      margin-right: 2em;\n    }\n\n    pre.code .ln {\n      color: grey;\n    }\n\n    /* line numbers */\n    pre.code,\n    code {\n      background-color: #eeeeee;\n    }\n\n    pre.code .comment,\n    code .comment {\n      color: #5c6576;\n    }\n\n    pre.code .keyword,\n    code .keyword {\n      color: #3B0D06;\n      font-weight: bold;\n    }\n\n    pre.code .literal.string,\n    code .literal.string {\n      color: #0c5404;\n    }\n\n    pre.code .name.builtin,\n    code .name.builtin {\n      color: #352b84;\n    }\n\n    pre.code .deleted,\n    code .deleted {\n      background-color: #DEB0A1;\n    }\n\n    pre.code .inserted,\n    code .inserted {\n      background-color: #A3D289;\n    }\n\n    span.classifier {\n      font-style: oblique;\n    }\n\n    span.classifier-delimiter {\n      font-weight: bold;\n    }\n\n    span.option {\n      white-space: nowrap;\n    }\n\n    span.problematic {\n      color: #b30000;\n    }\n\n    span.section-subtitle {\n      /* font-size relative to parent (h1..h6 element) */\n      font-size: 80%;\n    }\n\n    span.DecNumber {\n      color: #252dbe;\n    }\n\n    span.BinNumber {\n      color: #252dbe;\n    }\n\n    span.HexNumber {\n      color: #252dbe;\n    }\n\n    span.OctNumber {\n      color: #252dbe;\n    }\n\n    span.FloatNumber {\n      color: #252dbe;\n    }\n\n    span.Identifier {\n      color: #222;\n    }\n\n    span.Keyword {\n      font-weight: 600;\n      color: #5e8f60;\n    }\n\n    span.StringLit {\n      color: #a4255b;\n    }\n\n    span.LongStringLit {\n      color: #a4255b;\n    }\n\n    span.CharLit {\n      color: #a4255b;\n    }\n\n    span.EscapeSequence {\n      color: black;\n    }\n\n    span.Operator {\n      color: black;\n    }\n\n    span.Punctuation {\n      color: black;\n    }\n\n    span.Comment,\n    span.LongComment {\n      font-style: italic;\n      font-weight: 400;\n      color: #484a86;\n    }\n\n    span.RegularExpression {\n      color: darkviolet;\n    }\n\n    span.TagStart {\n      color: darkviolet;\n    }\n\n    span.TagEnd {\n      color: darkviolet;\n    }\n\n    span.Key {\n      color: #252dbe;\n    }\n\n    span.Value {\n      color: #252dbe;\n    }\n\n    span.RawData {\n      color: #a4255b;\n    }\n\n    span.Assembler {\n      color: #252dbe;\n    }\n\n    span.Preprocessor {\n      color: #252dbe;\n    }\n\n    span.Directive {\n      color: #252dbe;\n    }\n\n    span.Command,\n    span.Rule,\n    span.Hyperlink,\n    span.Label,\n    span.Reference,\n    span.Other {\n      color: black;\n    }\n\n    /* Pop type, const, proc, and iterator defs in nim def blocks */\n    dt pre>span.Identifier,\n    dt pre>span.Operator {\n      color: #155da4;\n      font-weight: 700;\n    }\n\n    dt pre>span.Keyword~span.Identifier,\n    dt pre>span.Identifier~span.Identifier,\n    dt pre>span.Operator~span.Identifier,\n    dt pre>span.Other~span.Identifier {\n      color: inherit;\n      font-weight: inherit;\n    }\n\n    /* Nim sprite for the footer (taken from main page favicon) */\n    .nim-sprite {\n      display: inline-block;\n      height: 16px;\n      width: 16px;\n      background-position: 0 0;\n      background-size: 16px 16px;\n      -webkit-filter: opacity(50%);\n      background-repeat: no-repeat;\n      background-image: url(\"data:image/x-icon;base64,AAABAAEAEBAAAAEAIABoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AAAAAAUAAAAF////AP///wD///8A////AP///wD///8A////AP///wD///8A////AAAAAAIAAABbAAAAlQAAAKIAAACbAAAAmwAAAKIAAACVAAAAWwAAAAL///8A////AP///wD///8A////AAAAABQAAADAAAAAYwAAAA3///8A////AP///wD///8AAAAADQAAAGMAAADAAAAAFP///wD///8A////AP///wAAAACdAAAAOv///wD///8A////AP///wD///8A////AP///wD///8AAAAAOgAAAJ3///8A////AP///wAAAAAnAAAAcP///wAAAAAoAAAASv///wD///8A////AP///wAAAABKAAAAKP///wAAAABwAAAAJ////wD///8AAAAAgQAAABwAAACIAAAAkAAAAJMAAACtAAAAFQAAABUAAACtAAAAkwAAAJAAAACIAAAAHAAAAIH///8A////AAAAAKQAAACrAAAAaP///wD///8AAAAARQAAANIAAADSAAAARf///wD///8AAAAAaAAAAKsAAACk////AAAAADMAAACcAAAAnQAAABj///8A////AP///wAAAAAYAAAAGP///wD///8A////AAAAABgAAACdAAAAnAAAADMAAAB1AAAAwwAAAP8AAADpAAAAsQAAAE4AAAAb////AP///wAAAAAbAAAATgAAALEAAADpAAAA/wAAAMMAAAB1AAAAtwAAAOkAAAD/AAAA/wAAAP8AAADvAAAA3gAAAN4AAADeAAAA3gAAAO8AAAD/AAAA/wAAAP8AAADpAAAAtwAAAGUAAAA/AAAA3wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAADfAAAAPwAAAGX///8A////AAAAAEgAAADtAAAAvwAAAL0AAADGAAAA7wAAAO8AAADGAAAAvQAAAL8AAADtAAAASP///wD///8A////AP///wD///8AAAAAO////wD///8A////AAAAAIcAAACH////AP///wD///8AAAAAO////wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A//8AAP//AAD4HwAA7/cAAN/7AAD//wAAoYUAAJ55AACf+QAAh+EAAAAAAADAAwAA4AcAAP5/AAD//wAA//8AAA==\");\n      margin-bottom: -5px;\n    }\n\n    span.pragmadots {\n      /* Position: relative frees us up to make the dots\n  look really nice without fucking up the layout and\n  causing bulging in the parent container */\n      position: relative;\n      /* 1px down looks slightly nicer */\n      top: 1px;\n      padding: 2px;\n      background-color: #e8e8e8;\n      border-radius: 4px;\n      margin: 0 2px;\n      cursor: pointer;\n      font-size: 0.8em;\n    }\n\n    span.pragmadots:hover {\n      background-color: #DBDBDB;\n    }\n\n    span.pragmawrap {\n      display: none;\n    }\n\n    span.attachedType {\n      display: none;\n      visibility: hidden;\n    }\n  "
          script(src = "dochack.js", `type` = "text/javascript")
          script(`type` = "text/javascript"):
            text "function main() {\n      var pragmaDots = document.getElementsByClassName(\"pragmadots\");\n      for (var i = 0; i "
            text "<"
            text "pragmaDots.length; i++) {\n        pragmaDots[i].onclick = function (event) {\n          // Hide tease\n          event.target.parentNode.style.display = \"none\";\n          // Show actual\n          event.target.parentNode.nextElementSibling.style.display = \"inline\";\n        }\n      }\n    }\n  "
        body(onload = "main()"):
          tdiv(class = "document", id = "documentId"):
            tdiv(class = "container"):
              h1(class = "title"):
                text "Nim Tutorial (Part I)"
              tdiv(class = "row"):
                tdiv(class = "three columns"):
                  tdiv(id = "global-links"):
                    ul(class = "simple-boot"):
                      li:
                        a(href = "manual.html"):
                          text "Manual"
                      li:
                        a(href = "lib.html"):
                          text "Standard library"
                      li:
                        a(href = "theindex.html"):
                          text "Index"
                  tdiv(id = "searchInputDiv"):
                    text "Search: "
                    input(`type` = "text", id = "searchInput", onkeyup = "search()")
                  ul(class = "simple simple-toc", id = "toc-list"):
                    li:
                      a(class = "reference", id = "introduction_toc", href = "#introduction"):
                        text "Introduction"
                    li:
                      a(class = "reference", id = "the-first-program_toc", href = "#the-first-program"):
                        text "The first program"
                    li:
                      a(class = "reference", id = "lexical-elements_toc", href = "#lexical-elements"):
                        text "Lexical elements"
                    ul(class = "simple"):
                      li:
                        a(class = "reference", id = "lexical-elements-string-and-character-literals_toc", href = "#lexical-elements-string-and-character-literals"):
                          text "String and character literals"
                      li:
                        a(class = "reference", id = "lexical-elements-comments_toc", href = "#lexical-elements-comments"):
                          text "Comments"
                      li:
                        a(class = "reference", id = "lexical-elements-numbers_toc", href = "#lexical-elements-numbers"):
                          text "Numbers"
                    li:
                      a(class = "reference", id = "the-var-statement_toc", href = "#the-var-statement"):
                        text "The var statement"
                    li:
                      a(class = "reference", id = "the-assignment-statement_toc", href = "#the-assignment-statement"):
                        text "The assignment\n                statement"
                    li:
                      a(class = "reference", id = "constants_toc", href = "#constants"):
                        text "Constants"
                    li:
                      a(class = "reference", id = "the-let-statement_toc", href = "#the-let-statement"):
                        text "The let statement"
                    li:
                      a(class = "reference", id = "control-flow-statements_toc", href = "#control-flow-statements"):
                        text "Control flow\n                statements"
                    ul(class = "simple"):
                      li:
                        a(class = "reference", id = "control-flow-statements-if-statement_toc", href = "#control-flow-statements-if-statement"):
                          text "If statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-case-statement_toc", href = "#control-flow-statements-case-statement"):
                          text "Case statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-while-statement_toc", href = "#control-flow-statements-while-statement"):
                          text "While statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-for-statement_toc", href = "#control-flow-statements-for-statement"):
                          text "For statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-scopes-and-the-block-statement_toc", href = "#control-flow-statements-scopes-and-the-block-statement"):
                          text "Scopes and the block statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-break-statement_toc", href = "#control-flow-statements-break-statement"):
                          text "Break statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-continue-statement_toc", href = "#control-flow-statements-continue-statement"):
                          text "Continue statement"
                      li:
                        a(class = "reference", id = "control-flow-statements-when-statement_toc", href = "#control-flow-statements-when-statement"):
                          text "When statement"
                    li:
                      a(class = "reference", id = "statements-and-indentation_toc", href = "#statements-and-indentation"):
                        text "Statements\n                and indentation"
                    li:
                      a(class = "reference", id = "procedures_toc", href = "#procedures"):
                        text "Procedures"
                    ul(class = "simple"):
                      li:
                        a(class = "reference", id = "procedures-result-variable_toc", href = "#procedures-result-variable"):
                          text "Result\n                  variable"
                      li:
                        a(class = "reference", id = "procedures-parameters_toc", href = "#procedures-parameters"):
                          text "Parameters"
                      li:
                        a(class = "reference", id = "procedures-discard-statement_toc", href = "#procedures-discard-statement"):
                          text "Discard statement"
                      li:
                        a(class = "reference", id = "procedures-named-arguments_toc", href = "#procedures-named-arguments"):
                          text "Named\n                  arguments"
                      li:
                        a(class = "reference", id = "procedures-default-values_toc", href = "#procedures-default-values"):
                          text "Default\n                  values"
                      li:
                        a(class = "reference", id = "procedures-overloaded-procedures_toc", href = "#procedures-overloaded-procedures"):
                          text "Overloaded procedures"
                      li:
                        a(class = "reference", id = "procedures-operators_toc", href = "#procedures-operators"):
                          text "Operators"
                      li:
                        a(class = "reference", id = "procedures-forward-declarations_toc", href = "#procedures-forward-declarations"):
                          text "Forward declarations"
                    li:
                      a(class = "reference", id = "iterators_toc", href = "#iterators"):
                        text "Iterators"
                    li:
                      a(class = "reference", id = "basic-types_toc", href = "#basic-types"):
                        text "Basic types"
                    ul(class = "simple"):
                      li:
                        a(class = "reference", id = "basic-types-booleans_toc", href = "#basic-types-booleans"):
                          text "Booleans"
                      li:
                        a(class = "reference", id = "basic-types-characters_toc", href = "#basic-types-characters"):
                          text "Characters"
                      li:
                        a(class = "reference", id = "basic-types-strings_toc", href = "#basic-types-strings"):
                          text "Strings"
                      li:
                        a(class = "reference", id = "basic-types-integers_toc", href = "#basic-types-integers"):
                          text "Integers"
                      li:
                        a(class = "reference", id = "basic-types-floats_toc", href = "#basic-types-floats"):
                          text "Floats"
                      li:
                        a(class = "reference", id = "basic-types-type-conversion_toc", href = "#basic-types-type-conversion"):
                          text "Type\n                  Conversion"
                    li:
                      a(class = "reference", id = "internal-type-representation_toc", href = "#internal-type-representation"):
                        text "Internal\n                type representation"
                    li:
                      a(class = "reference", id = "advanced-types_toc", href = "#advanced-types"):
                        text "Advanced types"
                    ul(class = "simple"):
                      li:
                        a(class = "reference", id = "advanced-types-enumerations_toc", href = "#advanced-types-enumerations"):
                          text "Enumerations"
                      li:
                        a(class = "reference", id = "advanced-types-ordinal-types_toc", href = "#advanced-types-ordinal-types"):
                          text "Ordinal types"
                      li:
                        a(class = "reference", id = "advanced-types-subranges_toc", href = "#advanced-types-subranges"):
                          text "Subranges"
                      li:
                        a(class = "reference", id = "advanced-types-sets_toc", href = "#advanced-types-sets"):
                          text "Sets"
                      ul(class = "simple"):
                        li:
                          a(class = "reference", id = "sets-bit-fields_toc", href = "#sets-bit-fields"):
                            text "Bit fields"
                      li:
                        a(class = "reference", id = "advanced-types-arrays_toc", href = "#advanced-types-arrays"):
                          text "Arrays"
                      li:
                        a(class = "reference", id = "advanced-types-sequences_toc", href = "#advanced-types-sequences"):
                          text "Sequences"
                      li:
                        a(class = "reference", id = "advanced-types-open-arrays_toc", href = "#advanced-types-open-arrays"):
                          text "Open\n                  arrays"
                      li:
                        a(class = "reference", id = "advanced-types-varargs_toc", href = "#advanced-types-varargs"):
                          text "Varargs"
                      li:
                        a(class = "reference", id = "advanced-types-slices_toc", href = "#advanced-types-slices"):
                          text "Slices"
                      li:
                        a(class = "reference", id = "advanced-types-objects_toc", href = "#advanced-types-objects"):
                          text "Objects"
                      li:
                        a(class = "reference", id = "advanced-types-tuples_toc", href = "#advanced-types-tuples"):
                          text "Tuples"
                      li:
                        a(class = "reference", id = "advanced-types-reference-and-pointer-types_toc", href = "#advanced-types-reference-and-pointer-types"):
                          text "Reference and pointer types"
                      li:
                        a(class = "reference", id = "advanced-types-procedural-type_toc", href = "#advanced-types-procedural-type"):
                          text "Procedural type"
                      li:
                        a(class = "reference", id = "advanced-types-distinct-type_toc", href = "#advanced-types-distinct-type"):
                          text "Distinct type"
                    li:
                      a(class = "reference", id = "modules_toc", href = "#modules"):
                        text "Modules"
                    ul(class = "simple"):
                      li:
                        a(class = "reference", id = "modules-excluding-symbols_toc", href = "#modules-excluding-symbols"):
                          text "Excluding\n                  symbols"
                      li:
                        a(class = "reference", id = "modules-from-statement_toc", href = "#modules-from-statement"):
                          text "From statement"
                      li:
                        a(class = "reference", id = "modules-include-statement_toc", href = "#modules-include-statement"):
                          text "Include\n                  statement"
                    li:
                      a(class = "reference", id = "part-2_toc", href = "#part-2"):
                        text "Part 2"
                tdiv(class = "nine columns", id = "content"):
                  tdiv(id = "tocRoot")
                  p(class = "module-desc"):
                    table(frame = "void", rules = "none", class = "docinfo"):
                      col(class = "docinfo-name")
                      col(class = "docinfo-content")
                      tbody(valign = "top"):
                        tr:
                          th(class = "docinfo-name"):
                            text "Author:"
                          td:
                            text "Andreas Rumpf"
                        tr:
                          th(class = "docinfo-name"):
                            text "Version:"
                          td:
                            text "1.0.0 "
                    h1:
                      a(class = "toc-backref", id = "introduction", href = "#introduction"):
                        text "Introduction"
                    blockquote:
                      p:
                        text "\"Der Mensch ist doch ein Augentier -- sch"
                        text "&ouml"
                        text "ne Dinge w"
                        text "&uuml"
                        text "nsch ich mir.\"\n              "
                  p:
                    text "This document is a tutorial for the programming language "
                    em:
                      text "Nim"
                    text ". This tutorial assumes that you are\n              familiar with basic programming concepts like variables, types or statements but is kept very basic. The\n              "
                    a(class = "reference external", href = "manual.html"):
                      text "manual"
                    text "contains many more examples of the advanced\n              language features. All code examples in this tutorial, as well as the ones found in the rest of Nim's\n              documentation, follow the "
                    a(class = "reference external", href = "nep1.html"):
                      text "Nim style guide"
                    text "."
                  h1:
                    a(class = "toc-backref", id = "the-first-program", href = "#the-first-program"):
                      text "The first program"
                  p:
                    text "We start the tour with a modified "
                    text "\""
                    text "hello world"
                    text "\""
                    text "program:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# This is a comment"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\"What's your name? \""
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Hi, "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "!"
                      text "\""
                  p:
                    text "Save this code to the file "
                    text "\""
                    text "greetings.nim"
                    text "\""
                    text ". Now compile and run it:\n              "
                    pre:
                      text "nim compile --run greetings.nim"
                  p:
                    text "With the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "--run"
                    a(class = "reference external", href = "nimc.html#compiler-usage-command-line-switches"):
                      text "switch"
                    text "Nim executes the file automatically\n              after compilation. You can give your program command line arguments by appending them after the filename:\n              "
                    pre:
                      text "nim compile --run greetings.nim arg1 arg2"
                  p:
                    text "Commonly used commands and switches have abbreviations, so you can also use:\n              "
                    pre:
                      text "nim c -r greetings.nim"
                  p:
                    text "To compile a release version use:\n              "
                    pre:
                      text "nim c -d:release greetings.nim"
                  p:
                    text "By default the Nim compiler generates a large amount of runtime checks aiming for your debugging\n              pleasure. With "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "-d:release"
                    text "some checks are "
                    a(class = "reference external", href = "nimc.html#compiler-usage-compile-time-symbols"):
                      text "turned off and\n                optimizations are turned on"
                    text "."
                  p:
                    text "Though it should be pretty obvious what the program does, I will explain the syntax: statements which are\n              not indented are executed when the program starts. Indentation is Nim's way of grouping statements.\n              Indentation is done with spaces only, tabulators are not allowed."
                  p:
                    text "String literals are enclosed in double quotes. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "var"
                    text "statement declares a new variable named "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "name"
                    text "of type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "string"
                    text "with the value that is returned by the "
                    a(class = "reference external", href = "system.html#readLine,File"):
                      text "readLine"
                    text "procedure. Since the compiler knows that "
                    a(class = "reference external", href = "system.html#readLine,File"):
                      text "readLine"
                    text "returns a string, you can leave\n              out the type in the declaration (this is called "
                    span(id = "local-type-inference_1"):
                      text "local type\n                inference"
                    text "). So this will work too:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "Note that this is basically the only form of type inference that exists in Nim: it is a good compromise\n              between brevity and readability."
                  p:
                    text "The "
                    text "\""
                    text "hello world"
                    text "\""
                    text "program contains several identifiers that are already known to the compiler:\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "echo"
                    text ", "
                    a(class = "reference external", href = "system.html#readLine,File"):
                      text "readLine"
                    text ", etc. These built-ins are declared in the "
                    a(class = "reference external", href = "system.html"):
                      text "system"
                    text "module which is implicitly imported by any\n              other module."
                  h1:
                    a(class = "toc-backref", id = "lexical-elements", href = "#lexical-elements"):
                      text "Lexical elements"
                  p:
                    text "Let us look at Nim's lexical elements in more detail: like other programming languages Nim consists of\n              (string) literals, identifiers, keywords, comments, operators, and other punctuation marks."
                  h2:
                    a(class = "toc-backref", id = "lexical-elements-string-and-character-literals", href = "#lexical-elements-string-and-character-literals"):
                      text "String and character literals"
                  p:
                    text "String literals are enclosed in double quotes; character literals in single quotes. Special characters\n              are escaped with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\\"
                    text ": "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\\n"
                    text "means newline, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\\t"
                    text "means tabulator, etc. There are also\n              "
                    em:
                      text "raw"
                    text "string literals:"
                  pre(class = "listing"):
                    span(class = "RawData"):
                      text "r"
                      text "\""
                      text "C:\\program files\\nim"
                      text "\""
                  p:
                    text "In raw literals the backslash is not an escape character."
                  p:
                    text "The third and last way to write string literals are "
                    em:
                      text "long string literals"
                    text ". They are written with\n              three quotes: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\""
                        text "\""
                        text "\""
                        text "...\n                  "
                        text "\""
                        text "\""
                        text "\""
                    text "; they can span over multiple lines and the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\\"
                    text "is not an escape character either. They are\n              very useful for embedding HTML code templates for example."
                  h2:
                    a(class = "toc-backref", id = "lexical-elements-comments", href = "#lexical-elements-comments"):
                      text "Comments"
                  p:
                    text "Comments start anywhere outside a string or character literal with the hash character "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "#"
                    text ". Documentation comments start with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "##"
                    text ":"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# A comment."
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "myVariable"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Comment"):
                      text "## a documentation comment"
                  p:
                    text "Documentation comments are tokens; they are only allowed at certain places in the input file as they\n              belong to the syntax tree! This feature enables simpler documentation generators."
                  p:
                    text "Multiline comments are started with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "#["
                    text "and\n              terminated with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "]#"
                    text ". Multiline comments can also\n              be nested."
                  pre(class = "listing"):
                    span(class = "LongComment"):
                      text "#[\nYou can have any Nim code text commented\nout inside this with no indentation restrictions.\n      yes("
                      text "\""
                      text "May I ask a pointless question?"
                      text "\""
                      text ")\n  #[\n     Note: these can be nested!!\n  ]#\n]#"
                  h2:
                    a(class = "toc-backref", id = "lexical-elements-numbers", href = "#lexical-elements-numbers"):
                      text "Numbers"
                  p:
                    text "Numerical literals are written as in most other languages. As a special twist, underscores are allowed\n              for better readability: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "1_000_000"
                    text "(one\n              million). A number that contains a dot (or 'e' or 'E') is a floating point literal: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "1.0e9"
                    text "(one billion). Hexadecimal literals are\n              prefixed with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "0x"
                    text ", binary literals with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "0b"
                    text "and octal literals with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "0o"
                    text ". A leading zero alone does not produce an\n              octal."
                  h1:
                    a(class = "toc-backref", id = "the-var-statement", href = "#the-var-statement"):
                      text "The var statement"
                  p:
                    text "The var statement declares a new local or global variable:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Comment"):
                      text "# declares x and y to have the type ``int``"
                  p:
                    text "Indentation can be used after the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "var"
                    text "keyword\n              to list a whole section of variables:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Comment"):
                      text "# a comment can occur here too"
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "c"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                  h1:
                    a(class = "toc-backref", id = "the-assignment-statement", href = "#the-assignment-statement"):
                      text "The assignment\n                statement"
                  p:
                    text "The assignment statement assigns a new value to a variable or more generally to a storage location:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Comment"):
                      text "# introduces a new variable `x` and assigns a value to it"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "xyz"
                      text "\""
                    span(class = "Comment"):
                      text "# assigns a new value to `x`"
                  p:
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "="
                    text "is the "
                    em:
                      text "assignment operator"
                    text ". The\n              assignment operator can be overloaded. You can declare multiple variables with a single assignment\n              statement and all the variables will have the same value:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Comment"):
                      text "# assigns 3 to the variables `x` and `y`"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "x "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Comment"):
                      text "# outputs "
                      text "\""
                      text "x 3"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "y "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Comment"):
                      text "# outputs "
                      text "\""
                      text "y 3"
                      text "\""
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "42"
                    span(class = "Comment"):
                      text "# changes `x` to 42 without changing `y`"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "x "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Comment"):
                      text "# outputs "
                      text "\""
                      text "x 42"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "y "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Comment"):
                      text "# outputs "
                      text "\""
                      text "y 3"
                      text "\""
                  p:
                    text "Note that declaring multiple variables with a single assignment which calls a procedure can have\n              unexpected results: the compiler will "
                    em:
                      text "unroll"
                    text "the assignments and end up calling the procedure\n              several times. If the result of the procedure depends on side effects, your variables may end up having\n              different values! For safety use side-effect free procedures if making multiple assignments."
                  h1:
                    a(class = "toc-backref", id = "constants", href = "#constants"):
                      text "Constants"
                  p:
                    text "Constants are symbols which are bound to a value. The constant's value cannot change. The compiler must\n              be able to evaluate the expression in a constant declaration at compile time:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "const"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Comment"):
                      text "# the constant x contains the string "
                      text "\""
                      text "abc"
                      text "\""
                  p:
                    text "Indentation can be used after the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "const"
                    text "keyword to list a whole section of constants:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "const"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Comment"):
                      text "# a comment can occur here too"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Identifier"):
                      text "z"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "+"
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Comment"):
                      text "# computations are possible"
                  h1:
                    a(class = "toc-backref", id = "the-let-statement", href = "#the-let-statement"):
                      text "The let statement"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "let"
                    text "statement works like the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "var"
                    text "statement but the declared symbols are\n              "
                    em:
                      text "single assignment"
                    text "variables: After the initialization their value cannot change:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Comment"):
                      text "# introduces a new variable `x` and binds a value to it"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "xyz"
                      text "\""
                    span(class = "Comment"):
                      text "# Illegal: assignment to `x`"
                  p:
                    text "The difference between "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "let"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "const"
                    text "is: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "let"
                    text "introduces a variable that can not be re-assigned, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "const"
                    text "means "
                    text "\""
                    text "enforce compile time evaluation\n              and put it into a data section"
                    text "\""
                    text ":"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "const"
                    span(class = "Identifier"):
                      text "input"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# Error: constant expression expected"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "input"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# works"
                  h1:
                    a(class = "toc-backref", id = "control-flow-statements", href = "#control-flow-statements"):
                      text "Control flow\n                statements"
                  p:
                    text "The greetings program consists of 3 statements that are executed sequentially. Only the most primitive\n              programs can get away with that: branching and looping are needed too."
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-if-statement", href = "#control-flow-statements-if-statement"):
                      text "If statement"
                  p:
                    text "The if statement is one way to branch the control flow:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Poor soul, you lost your name?"
                      text "\""
                    span(class = "Keyword"):
                      text "elif"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "name"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Very funny, your name is name."
                      text "\""
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Hi, "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "!"
                      text "\""
                  p:
                    text "There can be zero or more "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "elif"
                    text "parts, and the\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "else"
                    text "part is optional. The keyword "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "elif"
                    text "is short for "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "else if"
                    text ", and is useful to avoid excessive\n              indentation. (The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\""
                        text "\""
                    text "is the empty\n              string. It contains no characters.)"
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-case-statement", href = "#control-flow-statements-case-statement"):
                      text "Case statement"
                  p:
                    text "Another way to branch is provided by the case statement. A case statement is a multi-branch:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "case"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Keyword"):
                      text "of"
                    span(class = "StringLit"):
                      text "\""
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Poor soul, you lost your name?"
                      text "\""
                    span(class = "Keyword"):
                      text "of"
                    span(class = "StringLit"):
                      text "\""
                      text "name"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Very funny, your name is name."
                      text "\""
                    span(class = "Keyword"):
                      text "of"
                    span(class = "StringLit"):
                      text "\""
                      text "Dave"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "Frank"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Cool name!"
                      text "\""
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Hi, "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "!"
                      text "\""
                  p:
                    text "As it can be seen, for an "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "of"
                    text "branch a comma\n              separated list of values is also allowed."
                  p:
                    text "The case statement can deal with integers, other ordinal types and strings. (What an ordinal type is will\n              be explained soon.) For integers or other ordinal types value ranges are also possible:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# this statement will be explained later:"
                    span(class = "Keyword"):
                      text "from"
                    span(class = "Identifier"):
                      text "strutils"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "parseInt"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "A number please: "
                      text "\""
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "parseInt"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "case"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Keyword"):
                      text "of"
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "FloatNumber"):
                      text "4."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "7"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"
                      text "\""
                    span(class = "Keyword"):
                      text "of"
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "8"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "The number is 3 or 8"
                      text "\""
                  p:
                    text "However, the above code does not compile: the reason is that you have to cover every value that "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "n"
                    text "may contain, but the code only handles the\n              values "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "0..8"
                    text ". Since it is not very practical to\n              list every other possible integer (though it is possible thanks to the range notation), we fix this by\n              telling the compiler that for every other value nothing should be done:"
                  pre(class = "listing"):
                    span(class = "Operator"):
                      text "..."
                    span(class = "Keyword"):
                      text "case"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Keyword"):
                      text "of"
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "FloatNumber"):
                      text "4."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "7"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"
                      text "\""
                    span(class = "Keyword"):
                      text "of"
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "8"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "The number is 3 or 8"
                      text "\""
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "discard"
                  p:
                    text "The empty "
                    a(class = "reference external", href = "#discard-statement"):
                      text "discard statement"
                    text "is a "
                    em:
                      text "do\n                nothing"
                    text "statement. The compiler knows that a case statement with an else part cannot fail and thus\n              the error disappears. Note that it is impossible to cover all possible string values: that is why string\n              cases always need an "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "else"
                    text "branch."
                  p:
                    text "In general the case statement is used for subrange types or enumerations where it is of great help that\n              the compiler checks that you covered any possible value."
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-while-statement", href = "#control-flow-statements-while-statement"):
                      text "While statement"
                  p:
                    text "The while statement is a simple looping construct:"
                  pre(class = "listing"):
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "What's your name? "
                      text "\""
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Please tell me your name: "
                      text "\""
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# no ``var``, because we do not declare a new variable here"
                  p:
                    text "The example uses a while loop to keep asking the users for their name, as long as the user types in\n              nothing (only presses RETURN)."
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-for-statement", href = "#control-flow-statements-for-statement"):
                      text "For statement"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text "statement is a construct to loop over\n              any element an "
                    em:
                      text "iterator"
                    text "provides. The example uses the built-in "
                    a(class = "reference external", href = "system.html#countup"):
                      text "countup"
                    text "iterator:"
                  pre(class = "listing"):
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Counting to ten: "
                      text "\""
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "countup"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "Outputs 1 2 3 4 5 6 7 8 9 10 on different lines"
                  p:
                    text "The variable "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "i"
                    text "is implicitly declared by the\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text "loop and has the type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int"
                    text ", because that is what "
                    a(class = "reference external", href = "system.html#countup"):
                      text "countup"
                    text "returns. "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "i"
                    text "runs through the values 1, 2, .., 10. Each\n              value is "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "echo"
                    text "-ed. This code does the same:"
                  pre(class = "listing"):
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Counting to 10: "
                      text "\""
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Operator"):
                      text "<"
                      text "="
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Identifier"):
                      text "inc"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# increment i by 1"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "Outputs 1 2 3 4 5 6 7 8 9 10 on different lines"
                  p:
                    text "Counting down can be achieved as easily (but is less often needed):"
                  pre(class = "listing"):
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Counting down from 10 to 1: "
                      text "\""
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "countdown"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "Outputs 10 9 8 7 6 5 4 3 2 1 on different lines"
                  p:
                    text "Since counting up occurs so often in programs, Nim also has a "
                    a(class = "reference external", href = "system.html#...i,S,T"):
                      text ".."
                    text "iterator that does the same:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "FloatNumber"):
                      text "1."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Operator"):
                      text "..."
                  p:
                    text "Zero-indexed counting have two shortcuts "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text ".."
                        text "<"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "..^"
                    text "to\n              simplify counting to one less than the higher index:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                      text "<"
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Operator"):
                      text "..."
                    span(class = "Comment"):
                      text "# 0..9"
                  p:
                    text "or"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "some string"
                      text "\""
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                      text "<"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Operator"):
                      text "..."
                  p:
                    text "Other useful iterators for collections (like arrays and sequences) are"
                  ul(class = "simple"):
                    li:
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "items"
                      text "and "
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "mitems"
                      text ", which provides immutable and mutable\n                elements respectively, and"
                    li:
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "pairs"
                      text "and "
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "mpairs"
                      text "which provides the element and an index\n                number (immutable and mutable respectively)"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "index"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "item"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "StringLit"):
                      text "\""
                      text "a"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "b"
                      text "\""
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "pairs"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "item"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "at index "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "index"
                    span(class = "Comment"):
                      text "# ="
                      text ">"
                      text "a at index 0"
                    span(class = "Comment"):
                      text "# ="
                      text ">"
                      text "b at index 1"
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-scopes-and-the-block-statement", href = "#control-flow-statements-scopes-and-the-block-statement"):
                      text "Scopes and the block statement"
                  p:
                    text "Control flow statements have a feature not covered yet: they open a new scope. This means that in the\n              following example, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "x"
                    text "is not accessible outside\n              the loop:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "hi"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Comment"):
                      text "# does not work"
                  p:
                    text "A while (for) statement introduces an implicit block. Identifiers are only visible within the block they\n              have been declared. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "block"
                    text "statement can be\n              used to open a new block explicitly:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "block"
                    span(class = "Identifier"):
                      text "myblock"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "hi"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Comment"):
                      text "# does not work either"
                  p:
                    text "The block's "
                    em:
                      text "label"
                    text "("
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "myblock"
                    text "in the\n              example) is optional."
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-break-statement", href = "#control-flow-statements-break-statement"):
                      text "Break statement"
                  p:
                    text "A block can be left prematurely with a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "break"
                    text "statement. The break statement can leave a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "while"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text ", or a\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "block"
                    text "statement. It leaves the innermost\n              construct, unless a label of a block is given:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "block"
                    span(class = "Identifier"):
                      text "myblock"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "entering block"
                      text "\""
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "looping"
                      text "\""
                    span(class = "Keyword"):
                      text "break"
                    span(class = "Comment"):
                      text "# leaves the loop, but not the block"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "still in block"
                      text "\""
                    span(class = "Keyword"):
                      text "block"
                    span(class = "Identifier"):
                      text "myblock2"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "entering block"
                      text "\""
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "looping"
                      text "\""
                    span(class = "Keyword"):
                      text "break"
                    span(class = "Identifier"):
                      text "myblock2"
                    span(class = "Comment"):
                      text "# leaves the block (and the loop)"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "still in block"
                      text "\""
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-continue-statement", href = "#control-flow-statements-continue-statement"):
                      text "Continue statement"
                  p:
                    text "Like in many other programming languages, a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "continue"
                    text "statement starts the next iteration immediately:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "continue"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                  h2:
                    a(class = "toc-backref", id = "control-flow-statements-when-statement", href = "#control-flow-statements-when-statement"):
                      text "When statement"
                  p:
                    text "Example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "when"
                    span(class = "Identifier"):
                      text "system"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "hostOS"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "windows"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "running on Windows!"
                      text "\""
                    span(class = "Keyword"):
                      text "elif"
                    span(class = "Identifier"):
                      text "system"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "hostOS"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "linux"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "running on Linux!"
                      text "\""
                    span(class = "Keyword"):
                      text "elif"
                    span(class = "Identifier"):
                      text "system"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "hostOS"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "macosx"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "running on Mac OS X!"
                      text "\""
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "unknown operating system"
                      text "\""
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "when"
                    text "statement is almost identical to the\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "if"
                    text "statement, but with these differences:"
                  ul(class = "simple"):
                    li:
                      text "Each condition must be a constant expression since it is evaluated by the compiler."
                    li:
                      text "The statements within a branch do not open a new scope."
                    li:
                      text "The compiler checks the semantics and produces code "
                      em:
                        text "only"
                      text "for the statements that belong to\n                the first condition that evaluates to "
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "true"
                      text ".\n              "
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "when"
                    text "statement is useful for writing\n              platform specific code, similar to the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "#ifdef"
                    text "construct in the C programming language."
                  h1:
                    a(class = "toc-backref", id = "statements-and-indentation", href = "#statements-and-indentation"):
                      text "Statements and\n                indentation"
                  p:
                    text "Now that we covered the basic control flow statements, let's return to Nim indentation rules."
                  p:
                    text "In Nim there is a distinction between "
                    em:
                      text "simple statements"
                    text "and "
                    em:
                      text "complex statements"
                    text ".\n              "
                    em:
                      text "Simple statements"
                    text "cannot contain other statements: Assignment, procedure calls or the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "return"
                    text "statement belong to the simple statements.\n              "
                    em:
                      text "Complex statements"
                    text "like "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "if"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "when"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "while"
                    text "can\n              contain other statements. To avoid ambiguities, complex statements must always be indented, but single\n              simple statements do not:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# no indentation needed for single assignment statement:"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Comment"):
                      text "# indentation needed for nested if statement:"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Comment"):
                      text "# indentation needed, because two statements follow the condition:"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "false"
                  p:
                    em:
                      text "Expressions"
                    text "are parts of a statement which usually result in a value. The condition in an if\n              statement is an example for an expression. Expressions can contain indentation at certain places for\n              better readability:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "thisIsaLongCondition"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "and"
                    span(class = "Identifier"):
                      text "thisIsAnotherLongCondition"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "true"
                  p:
                    text "As a rule of thumb, indentation within expressions is allowed after operators, an open parenthesis and\n              after commas."
                  p:
                    text "With parenthesis and semicolons "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "(;)"
                    text "you can\n              use statements where only an expression is allowed:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# computes fac(4) at compile time:"
                    span(class = "Keyword"):
                      text "const"
                    span(class = "Identifier"):
                      text "fac4"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ";"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "FloatNumber"):
                      text "1."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*="
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text ";"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                  h1:
                    a(class = "toc-backref", id = "procedures", href = "#procedures"):
                      text "Procedures"
                  p:
                    text "To define new commands like "
                    a(class = "reference external", href = "system.html#echo"):
                      text "echo"
                    text "and "
                    a(class = "reference external", href = "system.html#readLine,File"):
                      text "readLine"
                    text "in the examples, the concept of\n              a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "procedure"
                    text "is needed. (Some languages call\n              them "
                    em:
                      text "methods"
                    text "or "
                    em:
                      text "functions"
                    text ".) In Nim new procedures are defined with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "proc"
                    text "keyword:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "yes"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "question"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "bool"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "question"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "(y/n)"
                      text "\""
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "case"
                    span(class = "Identifier"):
                      text "readLine"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdin"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "of"
                    span(class = "StringLit"):
                      text "\""
                      text "y"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "Y"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "yes"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "Yes"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "return"
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Keyword"):
                      text "of"
                    span(class = "StringLit"):
                      text "\""
                      text "n"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "N"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "no"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "No"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "return"
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Please be clear: yes or no"
                      text "\""
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "yes"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "Should I delete all your important files?"
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "I'm sorry Dave, I'm afraid I can't do that."
                      text "\""
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "I think you know what the problem is just as well as I do."
                      text "\""
                  p:
                    text "This example shows a procedure named "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "yes"
                    text "that\n              asks the user a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "question"
                    text "and returns true if\n              they answered "
                    text "\""
                    text "yes"
                    text "\""
                    text "(or something similar) and returns false if they answered "
                    text "\""
                    text "no"
                    text "\""
                    text "(or\n              something similar). A "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "return"
                    text "statement leaves\n              the procedure (and therefore the while loop) immediately. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "(question: string): bool"
                    text "syntax describes that the procedure expects a\n              parameter named "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "question"
                    text "of type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "string"
                    text "and returns a value of type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "bool"
                    text ". The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "bool"
                    text "type is built-in: the only valid values for "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "bool"
                    text "are "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "true"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "false"
                    text ". The\n              conditions in if or while statements must be of type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "bool"
                    text "."
                  p:
                    text "Some terminology: in the example "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "question"
                    text "is\n              called a (formal) "
                    em:
                      text "parameter"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\""
                        text "Should\n                  I..."
                        text "\""
                    text "is called an "
                    em:
                      text "argument"
                    text "that is passed to this parameter."
                  h2:
                    a(class = "toc-backref", id = "procedures-result-variable", href = "#procedures-result-variable"):
                      text "Result\n                variable"
                  p:
                    text "A procedure that returns a value has an implicit "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "result"
                    text "variable declared that represents the return value. A "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "return"
                    text "statement with no expression is a\n              shorthand for "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "return result"
                    text ". The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "result"
                    text "value is always returned automatically at\n              the end of a procedure if there is no "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "return"
                    text "statement at the exit."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "sumTillNegative"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "varargs"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Operator"):
                      text "<"
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "return"
                    span(class = "Identifier"):
                      text "result"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "result"
                    span(class = "Operator"):
                      text "+"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "sumTillNegative"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# echos 0"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "sumTillNegative"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# echos 12"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "sumTillNegative"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Operator"):
                      text "-"
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "6"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# echos 7"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "result"
                    text "variable is already implicitly\n              declared at the start of the function, so declaring it again with 'var result', for example, would shadow\n              it with a normal variable of the same name. The result variable is also already initialised with the\n              type's default value. Note that referential data types will be "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "nil"
                    text "at the start of the procedure, and thus may require manual initialisation.\n            "
                  h2:
                    a(class = "toc-backref", id = "procedures-parameters", href = "#procedures-parameters"):
                      text "Parameters"
                  p:
                    text "Parameters are immutable in the procedure body. By default, their value cannot be changed because this\n              allows the compiler to implement parameter passing in the most efficient way. If a mutable variable is\n              needed inside the procedure, it has to be declared with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "var"
                    text "in the procedure body. Shadowing the parameter name is possible, and\n              actually an idiom:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "printSeq"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "seq"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "nprinted"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "-"
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "nprinted"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "nprinted"
                    span(class = "Operator"):
                      text "=="
                    span(class = "Operator"):
                      text "-"
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "min"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "nprinted"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Operator"):
                      text ".."
                    span(class = "Operator"):
                      text "<"
                    span(class = "Identifier"):
                      text "nprinted"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                  p:
                    text "If the procedure needs to modify the argument for the caller, a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "var"
                    text "parameter can be used:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "divmod"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ";"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "remainder"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Keyword"):
                      text "div"
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Comment"):
                      text "# integer division"
                    span(class = "Identifier"):
                      text "remainder"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Keyword"):
                      text "mod"
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Comment"):
                      text "# integer modulo operation"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Identifier"):
                      text "divmod"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "8"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# modifies x and y"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "y"
                  p:
                    text "In the example, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "res"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "remainder"
                    text "are "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "var parameters"
                    text ". Var parameters can be modified by the procedure and the\n              changes are visible to the caller. Note that the above example would better make use of a tuple as a\n              return value instead of using var parameters."
                  h2:
                    a(class = "toc-backref", id = "procedures-discard-statement", href = "#procedures-discard-statement"):
                      text "Discard\n                statement"
                  p:
                    text "To call a procedure that returns a value just for its side effects and ignoring its return value, a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "discard"
                    text "statement "
                    strong:
                      text "must"
                    text "be used.\n              Nim does not allow silently throwing away a return value:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "discard"
                    span(class = "Identifier"):
                      text "yes"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "May I ask a pointless question?"
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "The return value can be ignored implicitly if the called proc/iterator has been declared with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "discardable"
                    text "pragma:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "p"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "discardable"
                    span(class = "Operator"):
                      text "."
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "return"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "+"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Identifier"):
                      text "p"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# now valid"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "discard"
                    text "statement can also be used to\n              create block comments as described in the "
                    a(class = "reference external", href = "#comments"):
                      text "Comments"
                    text "section."
                  h2:
                    a(class = "toc-backref", id = "procedures-named-arguments", href = "#procedures-named-arguments"):
                      text "Named\n                arguments"
                  p:
                    text "Often a procedure has many parameters and it is not clear in which order the parameters appear. This is\n              especially true for procedures that construct a complex data type. Therefore the arguments to a procedure\n              can be named, so that it is clear which argument belongs to which parameter:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "createWindow"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "width"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "height"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ";"
                    span(class = "Identifier"):
                      text "title"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ";"
                    span(class = "Identifier"):
                      text "show"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "bool"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "Window"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "..."
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "w"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "createWindow"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "show"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "title"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "My Application"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "height"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "600"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "width"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "800"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "Now that we use named arguments to call "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "createWindow"
                    text "the argument order does not matter anymore. Mixing named\n              arguments with ordered arguments is also possible, but not very readable:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "w"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "createWindow"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "title"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "My Application"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "height"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "600"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "width"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "800"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "The compiler checks that each parameter receives exactly one argument."
                  h2:
                    a(class = "toc-backref", id = "procedures-default-values", href = "#procedures-default-values"):
                      text "Default\n                values"
                  p:
                    text "To make the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "createWindow"
                    text "proc easier to use it\n              should provide "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "default values"
                    text "; these are values\n              that are used as arguments if the caller does not specify them:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "createWindow"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "width"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "500"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "height"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "700"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "title"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "unknown"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "show"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "Window"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "..."
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "w"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "createWindow"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "title"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "My Application"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "height"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "600"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "width"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "800"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "Now the call to "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "createWindow"
                    text "only needs to set\n              the values that differ from the defaults."
                  p:
                    text "Note that type inference works for parameters with default values; there is no need to write "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "title: string = "
                        text "\""
                        text "unknown"
                        text "\""
                    text ", for example.\n            "
                  h2:
                    a(class = "toc-backref", id = "procedures-overloaded-procedures", href = "#procedures-overloaded-procedures"):
                      text "Overloaded procedures"
                  p:
                    text "Nim provides the ability to overload procedures similar to C++:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "toString"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "..."
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "toString"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "bool"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "result"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "true"
                      text "\""
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "result"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "false"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "toString"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "13"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# calls the toString(x: int) proc"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "toString"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# calls the toString(x: bool) proc"
                  p:
                    text "(Note that "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "toString"
                    text "is usually the "
                    a(class = "reference external", href = "system.html#$"):
                      text "$"
                    text "operator in Nim.) The compiler chooses the most\n              appropriate proc for the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "toString"
                    text "calls. How\n              this overloading resolution algorithm works exactly is not discussed here (it will be specified in the\n              manual soon). However, it does not lead to nasty surprises and is based on a quite simple unification\n              algorithm. Ambiguous calls are reported as errors."
                  h2:
                    a(class = "toc-backref", id = "procedures-operators", href = "#procedures-operators"):
                      text "Operators"
                  p:
                    text "The Nim library makes heavy use of overloading - one reason for this is that each operator like "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "+"
                    text "is just an overloaded proc. The parser lets you\n              use operators in "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "infix notation"
                    text "("
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "a + b"
                    text ") or "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "prefix notation"
                    text "("
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "+\n                  a"
                    text "). An infix operator always receives two arguments, a prefix operator always one.\n              (Postfix operators are not possible, because this would be ambiguous: does "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "a @ @ b"
                    text "mean "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "(a) @ (@b)"
                    text "or "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "(a@) @\n                  (b)"
                    text "? It always means "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "(a) @\n                  (@b)"
                    text ", because there are no postfix operators in Nim.)"
                  p:
                    text "Apart from a few built-in keyword operators such as "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "and"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "or"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "not"
                    text ", operators always consist of these\n              characters: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "+ - * \\ / "
                        text "<"
                        text ">"
                        text "= @ $ ~ "
                        text "&"
                        text "% ! ? ^ .\n                  |"
                  p:
                    text "User defined operators are allowed. Nothing stops you from defining your own "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "@!?+~"
                    text "operator, but doing so may reduce\n              readability."
                  p:
                    text "The operator's precedence is determined by its first character. The details can be found in the manual.\n            "
                  p:
                    text "To define a new operator enclose the operator in backticks "
                    text "\""
                    text "``"
                    text "\""
                    text ":"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Operator"):
                      text "$"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "myDataType"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "..."
                    span(class = "Comment"):
                      text "# now the $ operator also works with myDataType, overloading resolution"
                    span(class = "Comment"):
                      text "# ensures that $ works for built-in types just like before"
                  p:
                    text "The "
                    text "\""
                    text "``"
                    text "\""
                    text "notation can also be used to call an operator just like any other procedure:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Operator"):
                      text "=="
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Operator"):
                      text "+"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "7"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "True"
                      text "\""
                  h2:
                    a(class = "toc-backref", id = "procedures-forward-declarations", href = "#procedures-forward-declarations"):
                      text "Forward declarations"
                  p:
                    text "Every variable, procedure, etc. needs to be declared before it can be used. (The reason for this is that\n              it is non-trivial to avoid this need in a language that supports meta programming as extensively as Nim\n              does.) However, this cannot be done for mutually recursive procedures:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# forward declaration:"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "even"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "bool"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "odd"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "bool"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text ">"
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# makes sure we don't run into negative recursion"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Keyword"):
                      text "or"
                    span(class = "Identifier"):
                      text "even"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "-"
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "even"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "bool"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text ">"
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# makes sure we don't run into negative recursion"
                    span(class = "Keyword"):
                      text "if"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "false"
                    span(class = "Keyword"):
                      text "else"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Keyword"):
                      text "or"
                    span(class = "Identifier"):
                      text "odd"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "-"
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "Here "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "odd"
                    text "depends on "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "even"
                    text "and vice versa. Thus "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "even"
                    text "needs to be introduced to the compiler\n              before it is completely defined. The syntax for such a forward declaration is simple: just omit the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "="
                    text "and the procedure's body. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "assert"
                    text "just adds border conditions, and will be\n              covered later in "
                    a(class = "reference external", href = "#modules"):
                      text "Modules"
                    text "section."
                  p:
                    text "Later versions of the language will weaken the requirements for forward declarations."
                  p:
                    text "The example also shows that a proc's body can consist of a single expression whose value is then returned\n              implicitly."
                  h1:
                    a(class = "toc-backref", id = "iterators", href = "#iterators"):
                      text "Iterators"
                  p:
                    text "Let's return to the simple counting example:"
                  pre(class = "listing"):
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "Counting to ten: "
                      text "\""
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "countup"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "i"
                  p:
                    text "Can a "
                    a(class = "reference external", href = "system.html#countup"):
                      text "countup"
                    text "proc be written that supports\n              this loop? Lets try:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "countup"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Operator"):
                      text "<"
                      text "="
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "return"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Identifier"):
                      text "inc"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "However, this does not work. The problem is that the procedure should not only "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "return"
                    text ", but return and "
                    strong:
                      text "continue"
                    text "after an iteration has finished. This "
                    em:
                      text "return and continue"
                    text "is called a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "yield"
                    text "statement. Now the only thing left to do is\n              to replace the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "proc"
                    text "keyword by "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "iterator"
                    text "and here it is - our first iterator:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "iterator"
                    span(class = "Identifier"):
                      text "countup"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Operator"):
                      text "<"
                      text "="
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "yield"
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Identifier"):
                      text "inc"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "res"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "Iterators look very similar to procedures, but there are several important differences:"
                  ul(class = "simple"):
                    li:
                      text "Iterators can only be called from for loops."
                    li:
                      text "Iterators cannot contain a "
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "return"
                      text "statement\n                (and procs cannot contain a "
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "yield"
                      text "statement).\n              "
                    li:
                      text "Iterators have no implicit "
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "result"
                      text "variable.\n              "
                    li:
                      text "Iterators do not support recursion."
                    li:
                      text "Iterators cannot be forward declared, because the compiler must be able to inline an iterator. (This\n                restriction will be gone in a future version of the compiler.)"
                  p:
                    text "However, you can also use a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "closure"
                    text "iterator\n              to get a different set of restrictions. See "
                    a(class = "reference external", href = "manual.html#iterators-and-the-for-statement-first-class-iterators"):
                      text "first class iterators"
                    text "for\n              details. Iterators can have the same name and parameters as a proc, since essentially they have their own\n              namespaces. Therefore it is common practice to wrap iterators in procs of the same name which accumulate\n              the result of the iterator and return it as a sequence, like "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "split"
                    text "from the "
                    a(class = "reference external", href = "strutils.html"):
                      text "strutils\n                module"
                    text "."
                  h1:
                    a(class = "toc-backref", id = "basic-types", href = "#basic-types"):
                      text "Basic types"
                  p:
                    text "This section deals with the basic built-in types and the operations that are available for them in\n              detail."
                  h2:
                    a(class = "toc-backref", id = "basic-types-booleans", href = "#basic-types-booleans"):
                      text "Booleans"
                  p:
                    text "Nim's boolean type is called "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "bool"
                    text "and consists\n              of the two pre-defined values "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "true"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "false"
                    text ". Conditions in while, if, elif, and when\n              statements must be of type bool."
                  p:
                    text "The operators "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "not, and, or, xor, "
                        text "<"
                        text ", "
                        text "<"
                        text "=, "
                        text ">"
                        text ", "
                        text ">"
                        text "=,\n                  !=, =="
                    text "are defined for the bool type. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "and"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "or"
                    text "operators perform short-circuit evaluation. For example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "while"
                    span(class = "Identifier"):
                      text "p"
                    span(class = "Operator"):
                      text "!="
                    span(class = "Keyword"):
                      text "nil"
                    span(class = "Keyword"):
                      text "and"
                    span(class = "Identifier"):
                      text "p"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "!="
                    span(class = "StringLit"):
                      text "\""
                      text "xyz"
                      text "\""
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Comment"):
                      text "# p.name is not evaluated if p == nil"
                    span(class = "Identifier"):
                      text "p"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "p"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "next"
                  h2:
                    a(class = "toc-backref", id = "basic-types-characters", href = "#basic-types-characters"):
                      text "Characters"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "character type"
                    text "is called "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "char"
                    text ". Its size is always one byte, so it cannot\n              represent most UTF-8 characters; but it "
                    em:
                      text "can"
                    text "represent one of the bytes that makes up a multi-byte\n              UTF-8 character. The reason for this is efficiency: for the overwhelming majority of use-cases, the\n              resulting programs will still handle UTF-8 properly as UTF-8 was specially designed for this. Character\n              literals are enclosed in single quotes."
                  p:
                    text "Chars can be compared with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "=="
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "<"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "<"
                        text "="
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text ">"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text ">"
                        text "="
                    text "operators. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "$"
                    text "operator converts a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "char"
                    text "to a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "string"
                    text ". Chars cannot be mixed with integers; to get the ordinal value of a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "char"
                    text "use the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "ord"
                    text "proc. Converting from an integer to a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "char"
                    text "is done with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "chr"
                    text "proc."
                  h2:
                    a(class = "toc-backref", id = "basic-types-strings", href = "#basic-types-strings"):
                      text "Strings"
                  p:
                    text "String variables are "
                    strong:
                      text "mutable"
                    text ", so appending to a string is possible, and quite efficient.\n              Strings in Nim are both zero-terminated and have a length field. A string's length can be retrieved with\n              the builtin "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "len"
                    text "procedure; the length never\n              counts the terminating zero. Accessing the terminating zero is an error, it only exists so that a Nim\n              string can be converted to a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "cstring"
                    text "without\n              doing a copy."
                  p:
                    text "The assignment operator for strings copies the string. You can use the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "&"
                    text "operator to concatenate strings and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "add"
                    text "to append to a string."
                  p:
                    text "Strings are compared using their lexicographical order. All the comparison operators are supported. By\n              convention, all strings are UTF-8 encoded, but this is not enforced. For example, when reading strings\n              from binary files, they are merely a sequence of bytes. The index operation "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "s[i]"
                    text "means the i-th "
                    em:
                      text "char"
                    text "of "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "s"
                    text ", not the i-th "
                    em:
                      text "unichar"
                    text "."
                  p:
                    text "A string variable is initialized with the empty string "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "\""
                        text "\""
                    text "."
                  h2:
                    a(class = "toc-backref", id = "basic-types-integers", href = "#basic-types-integers"):
                      text "Integers"
                  p:
                    text "Nim has these integer types built-in: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int int8 int16 int32\n                  int64 uint uint8 uint16 uint32 uint64"
                    text "."
                  p:
                    text "The default integer type is "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int"
                    text ". Integer\n              literals can have a "
                    em:
                      text "type suffix"
                    text "to specify a non-default integer type:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Comment"):
                      text "# x is of type ``int``"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0'i8"
                    span(class = "Comment"):
                      text "# y is of type ``int8``"
                    span(class = "Identifier"):
                      text "z"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0'i64"
                    span(class = "Comment"):
                      text "# z is of type ``int64``"
                    span(class = "Identifier"):
                      text "u"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "0'"
                    span(class = "Identifier"):
                      text "u"
                    span(class = "Comment"):
                      text "# u is of type ``uint``"
                  p:
                    text "Most often integers are used for counting objects that reside in memory, so "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int"
                    text "has the same size as a pointer."
                  p:
                    text "The common operators "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "+ - * div mod "
                        text "<"
                        text "<"
                        text "= == != "
                        text ">"
                        text ">"
                        text "="
                    text "are defined for integers. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "and or\n                  xor not"
                    text "operators are also defined for integers, and provide "
                    em:
                      text "bitwise"
                    text "operations.\n              Left bit shifting is done with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "shl"
                    text ", right\n              shifting with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "shr"
                    text "operator. Bit shifting\n              operators always treat their arguments as "
                    em:
                      text "unsigned"
                    text ". For "
                    span(id = "arithmetic-bit-shifts_1"):
                      text "arithmetic bit shifts"
                    text "ordinary multiplication or division can be\n              used."
                  p:
                    text "Unsigned operations all wrap around; they cannot lead to over- or under-flow errors."
                  p:
                    text "Lossless "
                    span(id = "automatic-type-conversion_1"):
                      text "Automatic type conversion"
                    text "is performed in\n              expressions where different kinds of integer types are used. However, if the type conversion would cause\n              loss of information, the "
                    span(id = "eoutofrange_1"):
                      text "EOutOfRange"
                    text "exception is raised (if the error\n              cannot be detected at compile time)."
                  h2:
                    a(class = "toc-backref", id = "basic-types-floats", href = "#basic-types-floats"):
                      text "Floats"
                  p:
                    text "Nim has these floating point types built-in: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "float float32\n                  float64"
                    text "."
                  p:
                    text "The default float type is "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "float"
                    text ". In the\n              current implementation, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "float"
                    text "is always\n              64-bits."
                  p:
                    text "Float literals can have a "
                    em:
                      text "type suffix"
                    text "to specify a non-default float type:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "FloatNumber"):
                      text "0.0"
                    span(class = "Comment"):
                      text "# x is of type ``float``"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "FloatNumber"):
                      text "0.0'f32"
                    span(class = "Comment"):
                      text "# y is of type ``float32``"
                    span(class = "Identifier"):
                      text "z"
                    span(class = "Operator"):
                      text "="
                    span(class = "FloatNumber"):
                      text "0.0'f64"
                    span(class = "Comment"):
                      text "# z is of type ``float64``"
                  p:
                    text "The common operators "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "+ - * / "
                        text "<"
                        text "<"
                        text "= == != "
                        text ">"
                        text ">"
                        text "="
                    text "are defined for floats and follow the IEEE-754 standard."
                  p:
                    text "Automatic type conversion in expressions with different kinds of floating point types is performed: the\n              smaller type is converted to the larger. Integer types are "
                    strong:
                      text "not"
                    text "converted to floating\n              point types automatically, nor vice versa. Use the "
                    a(class = "reference external", href = "system.html#toInt"):
                      text "toInt"
                    text "and "
                    a(class = "reference external", href = "system.html#toFloat"):
                      text "toFloat"
                    text "procs for these conversions."
                  h2:
                    a(class = "toc-backref", id = "basic-types-type-conversion", href = "#basic-types-type-conversion"):
                      text "Type\n                Conversion"
                  p:
                    text "Conversion between numerical types is performed by using the type as a function:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int32"
                    span(class = "Operator"):
                      text "="
                    span(class = "FloatNumber"):
                      text "1."
                    span(class = "Identifier"):
                      text "int32"
                    span(class = "Comment"):
                      text "# same as calling int32(1)"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int8"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "int8"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "CharLit"):
                      text "'a'"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# 'a' == 97'i8"
                    span(class = "Identifier"):
                      text "z"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "float"
                    span(class = "Operator"):
                      text "="
                    span(class = "FloatNumber"):
                      text "2.5"
                    span(class = "Comment"):
                      text "# int(2.5) rounds down to 2"
                    span(class = "Identifier"):
                      text "sum"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "+"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "+"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "z"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# sum == 100"
                  h1:
                    a(class = "toc-backref", id = "internal-type-representation", href = "#internal-type-representation"):
                      text "Internal\n                type representation"
                  p:
                    text "As mentioned earlier, the built-in "
                    a(class = "reference external", href = "system.html#$"):
                      text "$"
                    text "(stringify)\n              operator turns any basic type into a string, which you can then print to the console using the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "echo"
                    text "proc. However, advanced types, and your own\n              custom types, won't work with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "$"
                    text "operator\n              until you define it for them. Sometimes you just want to debug the current value of a complex type without\n              having to write its "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "$"
                    text "operator. You can use\n              then the "
                    a(class = "reference external", href = "system.html#repr"):
                      text "repr"
                    text "proc which works with any type and\n              even complex data graphs with cycles. The following example shows that even for basic types there is a\n              difference between the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "$"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "repr"
                    text "outputs:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "myBool"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "true"
                    span(class = "Identifier"):
                      text "myCharacter"
                    span(class = "Operator"):
                      text "="
                    span(class = "CharLit"):
                      text "'n'"
                    span(class = "Identifier"):
                      text "myString"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "nim"
                      text "\""
                    span(class = "Identifier"):
                      text "myInteger"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "42"
                    span(class = "Identifier"):
                      text "myFloat"
                    span(class = "Operator"):
                      text "="
                    span(class = "FloatNumber"):
                      text "3.14"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "myBool"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text ":"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "myBool"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "true:true"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "myCharacter"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text ":"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "myCharacter"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "n:'n'"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "myString"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text ":"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "myString"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "nim:0x10fa8c050"
                      text "\""
                      text "nim"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "myInteger"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text ":"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "myInteger"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "42:42"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "myFloat"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text ":"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "myFloat"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "3.1400000000000001e+00:3.1400000000000001e+00"
                  h1:
                    a(class = "toc-backref", id = "advanced-types", href = "#advanced-types"):
                      text "Advanced types"
                  p:
                    text "In Nim new types can be defined within a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "type"
                    text "statement:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "biggestInt"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "int64"
                    span(class = "Comment"):
                      text "# biggest integer type that is available"
                    span(class = "Identifier"):
                      text "biggestFloat"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "float64"
                    span(class = "Comment"):
                      text "# biggest float type that is available"
                  p:
                    text "Enumeration and object types may only be defined within a "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "type"
                    text "statement."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-enumerations", href = "#advanced-types-enumerations"):
                      text "Enumerations"
                  p:
                    text "A variable of an enumeration type can only be assigned one of the enumeration's specified values. These\n              values are a set of ordered symbols. Each symbol is mapped to an integer value internally. The first\n              symbol is represented at runtime by 0, the second by 1 and so on. For example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "Direction"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "enum"
                    span(class = "Identifier"):
                      text "north"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "east"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "south"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "west"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "south"
                    span(class = "Comment"):
                      text "# `x` is of type `Direction`; its value is `south`"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Comment"):
                      text "# writes "
                      text "\""
                      text "south"
                      text "\""
                      text "to `stdout`"
                  p:
                    text "All the comparison operators can be used with enumeration types."
                  p:
                    text "An enumeration's symbol can be qualified to avoid ambiguities: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "Direction.south"
                    text "."
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "$"
                    text "operator can convert any enumeration\n              value to its name, and the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "ord"
                    text "proc can convert\n              it to its underlying integer value."
                  p:
                    text "For better interfacing to other programming languages, the symbols of enum types can be assigned an\n              explicit ordinal value. However, the ordinal values must be in ascending order."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-ordinal-types", href = "#advanced-types-ordinal-types"):
                      text "Ordinal\n                types"
                  p:
                    text "Enumerations, integer types, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "char"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "bool"
                    text "(and subranges) are called ordinal types.\n              Ordinal types have quite a few special operations:"
                  table(class = "docutils", border = "1"):
                    tr:
                      th:
                        text "Operation"
                      th:
                        text "Comment"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "ord(x)"
                      td:
                        text "returns the integer value that is used to represent "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                        text "'s value"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "inc(x)"
                      td:
                        text "increments "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                        text "by one"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "inc(x, n)"
                      td:
                        text "increments "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                        text "by "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "n"
                        text "; "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "n"
                        text "is an integer"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "dec(x)"
                      td:
                        text "decrements "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                        text "by one"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "dec(x, n)"
                      td:
                        text "decrements "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                        text "by "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "n"
                        text "; "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "n"
                        text "is an integer"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "succ(x)"
                      td:
                        text "returns the successor of "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "succ(x, n)"
                      td:
                        text "returns the "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "n"
                        text "'th successor of "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "pred(x)"
                      td:
                        text "returns the predecessor of "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "pred(x, n)"
                      td:
                        text "returns the "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "n"
                        text "'th predecessor of "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "x"
                  p:
                    text "The "
                    a(class = "reference external", href = "system.html#inc"):
                      text "inc"
                    text ", "
                    a(class = "reference external", href = "system.html#dec"):
                      text "dec"
                    text ", "
                    a(class = "reference external", href = "system.html#succ"):
                      text "succ"
                    text "and "
                    a(class = "reference external", href = "system.html#pred"):
                      text "pred"
                    text "operations can fail by raising an "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "EOutOfRange"
                    text "or "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "EOverflow"
                    text "exception. (If the code has been compiled with the proper runtime\n              checks turned on.)"
                  h2:
                    a(class = "toc-backref", id = "advanced-types-subranges", href = "#advanced-types-subranges"):
                      text "Subranges"
                  p:
                    text "A subrange type is a range of values from an integer or enumeration type (the base type). Example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "MySubrange"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "range"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text "]"
                  p:
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "MySubrange"
                    text "is a subrange of "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int"
                    text "which can only hold the values 0 to 5.\n              Assigning any other value to a variable of type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "MySubrange"
                    text "is a compile-time or runtime error. Assignments from the base type\n              to one of its subrange types (and vice versa) are allowed."
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "system"
                    text "module defines the important "
                    a(class = "reference external", href = "system.html#Natural"):
                      text "Natural"
                    text "type as "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "range[0..high(int)]"
                    text "("
                    a(class = "reference external", href = "system.html#high"):
                      text "high"
                    text "returns the maximal value). Other\n              programming languages may suggest the use of unsigned integers for natural numbers. This is often\n              "
                    strong:
                      text "unwise"
                    text ": you don't want unsigned arithmetic (which wraps around) just because the numbers\n              cannot be negative. Nim's "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "Natural"
                    text "type helps to\n              avoid this common programming error."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-sets", href = "#advanced-types-sets"):
                      text "Sets"
                  text "The set type\n            models the mathematical notion of a set. The set's basetype can only be an ordinal type of a certain size,\n            namely:"
                  ul(class = "simple"):
                    li:
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "int8"
                      text "-"
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "int16"
                    li:
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "uint8"
                      text "/"
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "byte"
                      text "-"
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "uint16"
                    li:
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "char"
                    li:
                      tt(class = "docutils literal"):
                        span(class = "pre"):
                          text "enum"
                  p:
                    text "or equivalent. For signed integers the set's base type is defined to be in the range "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "0 .. MaxSetElements-1"
                    text "where "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "MaxSetElements"
                    text "is currently always 2^16."
                  p:
                    text "The reason is that sets are implemented as high performance bit vectors. Attempting to declare a set with\n              a larger type will result in an error:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "set"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "int64"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# Error: set is too large"
                  p:
                    text "Sets can be constructed via the set constructor: "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "{}"
                    text "is the empty set. The empty set is type compatible with any concrete set\n              type. The constructor can also be used to include elements (and ranges of elements):"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "CharSet"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "set"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "char"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "CharSet"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "CharLit"):
                      text "'a'"
                    span(class = "Operator"):
                      text ".."
                    span(class = "CharLit"):
                      text "'z'"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "CharLit"):
                      text "'0'"
                    span(class = "Operator"):
                      text ".."
                    span(class = "CharLit"):
                      text "'9'"
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Comment"):
                      text "# This constructs a set that contains the"
                    span(class = "Comment"):
                      text "# letters from 'a' to 'z' and the digits"
                    span(class = "Comment"):
                      text "# from '0' to '9'"
                  p:
                    text "These operations are supported by sets:"
                  table(class = "docutils", border = "1"):
                    tr:
                      th:
                        text "operation"
                      th:
                        text "meaning"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A + B"
                      td:
                        text "union of two sets"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A * B"
                      td:
                        text "intersection of two sets"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A - B"
                      td:
                        text "difference of two sets (A without B's elements)"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A == B"
                      td:
                        text "set equality"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A "
                            text "<"
                            text "= B"
                      td:
                        text "subset relation (A is subset of B or equal to B)"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A "
                            text "<"
                            text "B"
                      td:
                        text "strict subset relation (A is a proper subset of B)"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "e in A"
                      td:
                        text "set membership (A contains element e)"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "e notin A"
                      td:
                        text "A does not contain element e"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "contains(A, e)"
                      td:
                        text "A contains element e"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "card(A)"
                      td:
                        text "the cardinality of A (number of elements in A)"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "incl(A, elem)"
                      td:
                        text "same as "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A = A + {elem}"
                    tr:
                      td:
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "excl(A, elem)"
                      td:
                        text "same as "
                        tt(class = "docutils literal"):
                          span(class = "pre"):
                            text "A = A - {elem}"
                  h3:
                    a(class = "toc-backref", id = "sets-bit-fields", href = "#sets-bit-fields"):
                      text "Bit fields"
                  p:
                    text "Sets are often used to define a type for the "
                    em:
                      text "flags"
                    text "of a procedure. This is a cleaner (and type\n              safe) solution than defining integer constants that have to be "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "or"
                    text "'ed together."
                  p:
                    text "Enum, sets and casting can be used together as in:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "MyFlag"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "size"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "sizeof"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "cint"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "."
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "enum"
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Identifier"):
                      text "B"
                    span(class = "Identifier"):
                      text "C"
                    span(class = "Identifier"):
                      text "D"
                    span(class = "Identifier"):
                      text "MyFlags"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "set"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "MyFlag"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "toNum"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "MyFlags"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "cast"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "cint"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "toFlags"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "v"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "MyFlags"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "cast"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "MyFlags"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "v"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "toNum"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "toNum"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "toNum"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Identifier"):
                      text "D"
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "8"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "toNum"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "C"
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "toFlags"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Punctuation"):
                      text "}"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "toFlags"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "7"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "Punctuation"):
                      text "{"
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "B"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "C"
                    span(class = "Punctuation"):
                      text "}"
                  p:
                    text "Note how the set turns enum values into powers of 2."
                  p:
                    text "If using enums and sets with C, use distinct cint."
                  p:
                    text "For interoperability with C see also the "
                    a(class = "reference external", href = "#implementation-specific-pragmas-bitsize-pragma"):
                      text "bitsize pragma"
                    text ". "
                  h2:
                    a(class = "toc-backref", id = "advanced-types-arrays", href = "#advanced-types-arrays"):
                      text "Arrays"
                  p:
                    text "An array is a simple fixed length container. Each element in an array has the same type. The array's\n              index type can be any ordinal type."
                  p:
                    text "Arrays can be constructed using "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "[]"
                    text ":"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "IntArray"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# an array that is indexed with 0..5"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "IntArray"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "6"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "low"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text ".."
                    span(class = "Identifier"):
                      text "high"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                  p:
                    text "The notation "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "x[i]"
                    text "is used to access the i-th\n              element of "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "x"
                    text ". Array access is always bounds\n              checked (at compile-time or at runtime). These checks can be disabled via pragmas or invoking the compiler\n              with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "--bound_checks:off"
                    text "command line\n              switch."
                  p:
                    text "Arrays are value types, like any other Nim type. The assignment operator copies the whole array contents.\n            "
                  p:
                    text "The built-in "
                    a(class = "reference external", href = "system.html#len,TOpenArray"):
                      text "len"
                    text "proc returns the\n              array's length. "
                    a(class = "reference external", href = "system.html#low"):
                      text "low(a)"
                    text "returns the lowest valid\n              index for the array "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "a"
                    text "and "
                    a(class = "reference external", href = "system.html#high"):
                      text "high(a)"
                    text "the highest valid index."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "Direction"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "enum"
                    span(class = "Identifier"):
                      text "north"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "east"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "south"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "west"
                    span(class = "Identifier"):
                      text "BlinkLights"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "enum"
                    span(class = "Identifier"):
                      text "off"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "on"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "slowBlink"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "mediumBlink"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "fastBlink"
                    span(class = "Identifier"):
                      text "LevelSetting"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "north"
                    span(class = "Operator"):
                      text ".."
                    span(class = "Identifier"):
                      text "west"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "BlinkLights"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "LevelSetting"
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "north"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "on"
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "south"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "slowBlink"
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "east"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "fastBlink"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "[on, fastBlink, slowBlink, off]"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "low"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "north"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "4"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "high"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "level"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "west"
                  p:
                    text "The syntax for nested arrays (multidimensional) in other languages is a matter of appending more brackets\n              because usually each dimension is restricted to the same index type as the others. In Nim you can have\n              different dimensions with different index types, so the nesting syntax is slightly different. Building on\n              the previous example where a level is defined as an array of enums indexed by yet another enum, we can add\n              the following lines to add a light tower type subdivided in height levels accessed through their integer\n              index:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "LightTower"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "1."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "LevelSetting"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "tower"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "LightTower"
                    span(class = "Identifier"):
                      text "tower"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "north"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "slowBlink"
                    span(class = "Identifier"):
                      text "tower"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "east"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "mediumBlink"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "tower"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "10"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "tower"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "4"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "repr"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "tower"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "[[slowBlink, mediumBlink, ...more output.."
                    span(class = "Comment"):
                      text "# The following lines don't compile due to type mismatch errors"
                    span(class = "Comment"):
                      text "#tower[north][east] = on"
                    span(class = "Comment"):
                      text "#tower[0][1] = on"
                  p:
                    text "Note how the built-in "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "len"
                    text "proc returns only\n              the array's first dimension length. Another way of defining the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "LightTower"
                    text "to better illustrate its nested nature would be to omit the\n              previous definition of the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "LevelSetting"
                    text "type\n              and instead write it embedded directly as the type of the first dimension:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "LightTower"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "1."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "10"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "north"
                    span(class = "Operator"):
                      text ".."
                    span(class = "Identifier"):
                      text "west"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "BlinkLights"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text "]"
                  p:
                    text "It is quite common to have arrays start at zero, so there's a shortcut syntax to specify a range from\n              zero to the specified index minus one:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "IntArray"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# an array that is indexed with 0..5"
                    span(class = "Identifier"):
                      text "QuickArray"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "6"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# an array that is indexed with 0..5"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "IntArray"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "QuickArray"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "6"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "low"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text ".."
                    span(class = "Identifier"):
                      text "high"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                  h2:
                    a(class = "toc-backref", id = "advanced-types-sequences", href = "#advanced-types-sequences"):
                      text "Sequences"
                  p:
                    text "Sequences are similar to arrays but of dynamic length which may change during runtime (like strings).\n              Since sequences are resizable they are always allocated on the heap and garbage collected."
                  p:
                    text "Sequences are always indexed with an "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int"
                    text "starting at position 0. The "
                    a(class = "reference external", href = "system.html#len,seq[T]"):
                      text "len"
                    text ", "
                    a(class = "reference external", href = "system.html#low"):
                      text "low"
                    text "and "
                    a(class = "reference external", href = "system.html#high"):
                      text "high"
                    text "operations are available for sequences too. The notation "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "x[i]"
                    text "can be used to access the i-th element of\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "x"
                    text "."
                  p:
                    text "Sequences can be constructed by the array constructor "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "[]"
                    text "in conjunction with the array to sequence operator "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "@"
                    text ". Another way to allocate space for a sequence\n              is to call the built-in "
                    a(class = "reference external", href = "system.html#newSeq"):
                      text "newSeq"
                    text "procedure."
                  p:
                    text "A sequence may be passed to an openarray parameter."
                  p:
                    text "Example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "seq"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# a reference to a sequence of integers"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "@"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "6"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# the @ turns the array into a sequence allocated on the heap"
                  p:
                    text "Sequence variables are initialized with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "@[]"
                    text ".\n            "
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text "statement can be used with one or two\n              variables when used with a sequence. When you use the one variable form, the variable will hold the value\n              provided by the sequence. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text "statement is\n              looping over the results from the "
                    a(class = "reference external", href = "system.html#items.i,seq[T]"):
                      text "items()"
                    text "iterator from the "
                    a(class = "reference external", href = "system.html"):
                      text "system"
                    text "module. But if you use the two variable form, the first variable will hold\n              the index position and the second variable will hold the value. Here the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "for"
                    text "statement is looping over the results from\n              the "
                    a(class = "reference external", href = "system.html#pairs.i,seq[T]"):
                      text "pairs()"
                    text "iterator from the "
                    a(class = "reference external", href = "system.html"):
                      text "system"
                    text "module. Examples:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "value"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Operator"):
                      text "@"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "value"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "3"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "4"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "5"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "value"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Operator"):
                      text "@"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "StringLit"):
                      text "\""
                      text "index: "
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Operator"):
                      text "$"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text ", value:"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Operator"):
                      text "$"
                    span(class = "Identifier"):
                      text "value"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "index: 0, value:3"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "index: 1, value:4"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "index: 2, value:5"
                  h2:
                    a(class = "toc-backref", id = "advanced-types-open-arrays", href = "#advanced-types-open-arrays"):
                      text "Open\n                arrays"
                  p:
                    strong:
                      text "Note"
                    text ": Openarrays can only be used for parameters."
                  p:
                    text "Often fixed size arrays turn out to be too inflexible; procedures should be able to deal with arrays of\n              different sizes. The "
                    span(id = "openarray_1"):
                      text "openarray"
                    text "type allows this. Openarrays are always\n              indexed with an "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "int"
                    text "starting at position 0. The\n              "
                    a(class = "reference external", href = "system.html#len,TOpenArray"):
                      text "len"
                    text ", "
                    a(class = "reference external", href = "system.html#low"):
                      text "low"
                    text "and "
                    a(class = "reference external", href = "system.html#high"):
                      text "high"
                    text "operations are available for open arrays too. Any array with a compatible base type can be passed to an\n              openarray parameter, the index type does not matter."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "fruits"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "seq"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# reference to a sequence of strings that is initialized with '@[]'"
                    span(class = "Identifier"):
                      text "capitals"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "array"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# array of strings with a fixed size"
                    span(class = "Identifier"):
                      text "capitals"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "["
                    span(class = "StringLit"):
                      text "\""
                      text "New York"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "London"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "Berlin"
                      text "\""
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# array 'capitals' allows assignment of only three elements"
                    span(class = "Identifier"):
                      text "fruits"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "add"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "Banana"
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# sequence 'fruits' is dynamically expandable during runtime"
                    span(class = "Identifier"):
                      text "fruits"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "add"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "Mango"
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "openArraySize"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "oa"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "openArray"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "oa"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "openArraySize"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "fruits"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Comment"):
                      text "# procedure accepts a sequence as parameter"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Identifier"):
                      text "openArraySize"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "capitals"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "=="
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Comment"):
                      text "# but also an array type"
                  p:
                    text "The openarray type cannot be nested: multidimensional openarrays are not supported because this is seldom\n              needed and cannot be done efficiently."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-varargs", href = "#advanced-types-varargs"):
                      text "Varargs"
                  p:
                    text "A "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "varargs"
                    text "parameter is like an openarray\n              parameter. However, it is also a means to implement passing a variable number of arguments to a procedure.\n              The compiler converts the list of arguments to an array automatically:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "myWriteln"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "File"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "varargs"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "items"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                    span(class = "EscapeSequence"):
                      text "\\n"
                    span(class = "StringLit"):
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "myWriteln"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "def"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "xyz"
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# is transformed by the compiler to:"
                    span(class = "Identifier"):
                      text "myWriteln"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Punctuation"):
                      text "["
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "def"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "xyz"
                      text "\""
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "This transformation is only done if the varargs parameter is the last parameter in the procedure header.\n              It is also possible to perform type conversions in this context:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "myWriteln"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "File"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "varargs"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Operator"):
                      text "$"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "items"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "s"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "f"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                    span(class = "EscapeSequence"):
                      text "\\n"
                    span(class = "StringLit"):
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "myWriteln"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "123"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "FloatNumber"):
                      text "4.0"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# is transformed by the compiler to:"
                    span(class = "Identifier"):
                      text "myWriteln"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Operator"):
                      text "$"
                    span(class = "DecNumber"):
                      text "123"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Operator"):
                      text "$"
                    span(class = "StringLit"):
                      text "\""
                      text "abc"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Operator"):
                      text "$"
                    span(class = "FloatNumber"):
                      text "4.0"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "In this example "
                    a(class = "reference external", href = "system.html#$"):
                      text "$"
                    text "is applied to any argument that\n              is passed to the parameter "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "a"
                    text ". Note that "
                    a(class = "reference external", href = "system.html#$"):
                      text "$"
                    text "applied to strings is a nop."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-slices", href = "#advanced-types-slices"):
                      text "Slices"
                  p:
                    text "Slices look similar to subranges types in syntax but are used in a different context. A slice is just an\n              object of type Slice which contains two bounds, "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "a"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b"
                    text ". By itself\n              a slice is not very useful, but other collection types define operators which accept Slice objects to\n              define ranges."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "Nim is a progamming language"
                      text "\""
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "Slices are useless."
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "7."
                    span(class = "Operator"):
                      text "."
                    span(class = "DecNumber"):
                      text "12"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "'a prog'"
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "FloatNumber"):
                      text "11."
                    span(class = "Operator"):
                      text ".^"
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "useful"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "'Slices are useful.'"
                  p:
                    text "In the previous example slices are used to modify a part of a string. The slice's bounds can hold any\n              value supported by their type, but it is the proc using the slice object which defines what values are\n              accepted."
                  p:
                    text "To understand some of the different ways of specifying the indices of strings, arrays, sequences, etc.,\n              it must be remembered that Nim uses zero-based indices."
                  p:
                    text "So the string "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b"
                    text "is of length 19, and two\n              different ways of specifying the indices are"
                  pre(class = "listing"):
                    span(class = "StringLit"):
                      text "\""
                      text "Slices are useless."
                      text "\""
                    span(class = "Operator"):
                      text "|"
                    span(class = "Operator"):
                      text "|"
                    span(class = "Operator"):
                      text "|"
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "DecNumber"):
                      text "11"
                    span(class = "DecNumber"):
                      text "17"
                    span(class = "Keyword"):
                      text "using"
                    span(class = "Identifier"):
                      text "indices"
                    span(class = "Operator"):
                      text "^"
                    span(class = "DecNumber"):
                      text "19"
                    span(class = "Operator"):
                      text "^"
                    span(class = "DecNumber"):
                      text "8"
                    span(class = "Operator"):
                      text "^"
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Keyword"):
                      text "using"
                    span(class = "Operator"):
                      text "^"
                    span(class = "Identifier"):
                      text "syntax"
                  p:
                    text "where "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[0..^1]"
                    text "is equivalent to "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[0..b.len-1]"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[0.."
                        text "<"
                        text "b.len]"
                    text ", and it can be seen that the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "^1"
                    text "provides a short-hand way of specifying the\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b.len-1"
                    text "."
                  p:
                    text "In the above example, because the string ends in a period, to get the portion of the string that is\n              "
                    text "\""
                    text "useless"
                    text "\""
                    text "and replace it with "
                    text "\""
                    text "useful"
                    text "\""
                    text "."
                  p:
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[11..^2]"
                    text "is the portion "
                    text "\""
                    text "useless"
                    text "\""
                    text ",\n              and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[11..^2] = "
                        text "\""
                        text "useful"
                        text "\""
                    text "replaces the\n              "
                    text "\""
                    text "useless"
                    text "\""
                    text "portion with "
                    text "\""
                    text "useful"
                    text "\""
                    text ", giving the result "
                    text "\""
                    text "Slices are useful."
                    text "\""
                  p:
                    text "Note: alternate ways of writing this are "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[^8..^2] =\n                  "
                        text "\""
                        text "useful"
                        text "\""
                    text "or as "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[11..b.len-2] =\n                  "
                        text "\""
                        text "useful"
                        text "\""
                    text "or as "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "b[11.."
                        text "<"
                        text "b.len-1]\n                  = "
                        text "\""
                        text "useful"
                        text "\""
                    text "."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-objects", href = "#advanced-types-objects"):
                      text "Objects"
                  p:
                    text "The default type to pack different values together in a single structure with a name is the object type.\n              An object is a value type, which means that when an object is assigned to a new variable all its\n              components are copied as well."
                  p:
                    text "Each object type "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "Foo"
                    text "has a constructor "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "Foo(field: value, ...)"
                    text "where all of its fields\n              can be initialized. Unspecified fields will get their default value."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "object"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "person1"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "StringLit"):
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "DecNumber"):
                      text "30"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person1"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Comment"):
                      text "# "
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person1"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Comment"):
                      text "# 30"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "person2"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "person1"
                    span(class = "Comment"):
                      text "# copy of person 1"
                    span(class = "Identifier"):
                      text "person2"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Operator"):
                      text "+="
                    span(class = "DecNumber"):
                      text "14"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person1"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Comment"):
                      text "# 30"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person2"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Comment"):
                      text "# 44"
                    span(class = "Comment"):
                      text "# the order may be changed"
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "person3"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "DecNumber"):
                      text "12"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "StringLit"):
                      text "\""
                      text "Quentin"
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# not every member needs to be specified"
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "person4"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# unspecified members will be initialized with their default"
                    span(class = "Comment"):
                      text "# values. In this case it is the empty string."
                    span(class = "Identifier"):
                      text "doAssert"
                    span(class = "Identifier"):
                      text "person4"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "=="
                    span(class = "StringLit"):
                      text "\""
                      text "\""
                  p:
                    text "Object fields that should be visible from outside the defining module have to be marked with "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "*"
                    text "."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "object"
                    span(class = "Comment"):
                      text "# the type is visible from other modules"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Operator"):
                      text "*:"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Comment"):
                      text "# the field of this type is visible from other modules"
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Operator"):
                      text "*:"
                    span(class = "Identifier"):
                      text "int"
                  h2:
                    a(class = "toc-backref", id = "advanced-types-tuples", href = "#advanced-types-tuples"):
                      text "Tuples"
                  p:
                    text "Tuples are very much like what you have seen so far from objects. They are value types where the\n              assignment operator copies each component. Unlike object types though, tuple types are structurally typed,\n              meaning different tuple-types are "
                    em:
                      text "equivalent"
                    text "if they specify fields of the same type and of the\n              same name in the same order."
                  p:
                    text "The constructor "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "()"
                    text "can be used to construct\n              tuples. The order of the fields in the constructor must match the order in the tuple's definition. But\n              unlike objects, a name for the tuple type may not be used here."
                  p:
                    text "Like the object type the notation "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "t.field"
                    text "is\n              used to access a tuple's field. Another notation that is not available for objects is "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "t[i]"
                    text "to access the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "i"
                    text "'th field. Here "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "i"
                    text "must be a constant integer."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Comment"):
                      text "# type representing a person:"
                    span(class = "Comment"):
                      text "# A person consists of a name and an age."
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "tuple"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Comment"):
                      text "# Alternative syntax for an equivalent type."
                    span(class = "Identifier"):
                      text "PersonX"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "tuple"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# anonymous field syntax"
                    span(class = "Identifier"):
                      text "PersonY"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "Person"
                    span(class = "Identifier"):
                      text "personX"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "PersonX"
                    span(class = "Identifier"):
                      text "personY"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "PersonY"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "StringLit"):
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "DecNumber"):
                      text "30"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# Person and PersonX are equivalent"
                    span(class = "Identifier"):
                      text "personX"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Comment"):
                      text "# Create a tuple with anonymous fields:"
                    span(class = "Identifier"):
                      text "personY"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "30"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# A tuple with anonymous fields is compatible with a tuple that has"
                    span(class = "Comment"):
                      text "# field names."
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "personY"
                    span(class = "Identifier"):
                      text "personY"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Comment"):
                      text "# Usually used for short tuple initialization syntax"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "30"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Comment"):
                      text "# "
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "age"
                    span(class = "Comment"):
                      text "# 30"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "0"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# "
                      text "\""
                      text "Peter"
                      text "\""
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "person"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Comment"):
                      text "# 30"
                    span(class = "Comment"):
                      text "# You don't need to declare tuples in a separate type section."
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "building"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "tuple"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "street"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "number"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Identifier"):
                      text "building"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "Rue del Percebe"
                      text "\""
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "13"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "building"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "street"
                    span(class = "Comment"):
                      text "# The following line does not compile, they are different tuples!"
                    span(class = "Comment"):
                      text "#person = building"
                    span(class = "Comment"):
                      text "# --"
                      text ">"
                      text "Error: type mismatch: got (tuple[street: string, number: int])"
                    span(class = "Comment"):
                      text "#     but expected 'Person'"
                  p:
                    text "Even though you don't need to declare a type for a tuple to use it, tuples created with different field\n              names will be considered different objects despite having the same field types."
                  p:
                    text "Tuples can be "
                    em:
                      text "unpacked"
                    text "during variable assignment (and only then!). This can be handy to assign\n              directly the fields of the tuples to individually named variables. An example of this is the "
                    a(class = "reference external", href = "os.html#splitFile"):
                      text "splitFile"
                    text "proc from the "
                    a(class = "reference external", href = "os.html"):
                      text "os module"
                    text "which returns the directory, name and extension\n              of a path at the same time. For tuple unpacking to work you must use parentheses around the values you\n              want to assign the unpacking to, otherwise you will be assigning the same value to all the individual\n              variables! For example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "os"
                    span(class = "Keyword"):
                      text "let"
                    span(class = "Identifier"):
                      text "path"
                    span(class = "Operator"):
                      text "="
                    span(class = "StringLit"):
                      text "\""
                      text "usr/local/nimc.html"
                      text "\""
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "dir"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "ext"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "splitFile"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "path"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "baddir"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "badname"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "badext"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "splitFile"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "path"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "dir"
                    span(class = "Comment"):
                      text "# outputs `usr/local`"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "name"
                    span(class = "Comment"):
                      text "# outputs `nimc`"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "ext"
                    span(class = "Comment"):
                      text "# outputs `.html`"
                    span(class = "Comment"):
                      text "# All the following output the same line:"
                    span(class = "Comment"):
                      text "# `(dir: usr/local, name: nimc, ext: .html)`"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "baddir"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "badname"
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "badext"
                  p:
                    text "Fields of tuples are always public, they don't need to be explicity marked to be exported, unlike for\n              example fields in an object type."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-reference-and-pointer-types", href = "#advanced-types-reference-and-pointer-types"):
                      text "Reference and pointer types"
                  p:
                    text "References (similar to pointers in other programming languages) are a way to introduce many-to-one\n              relationships. This means different references can point to and modify the same location in memory."
                  p:
                    text "Nim distinguishes between "
                    span(id = "traced_1"):
                      text "traced"
                    text "and "
                    span(id = "untraced_1"):
                      text "untraced"
                    text "references. Untraced references are also called "
                    em:
                      text "pointers"
                    text ". Traced references point to objects in a\n              garbage collected heap, untraced references point to manually allocated objects or to objects elsewhere in\n              memory. Thus untraced references are "
                    em:
                      text "unsafe"
                    text ". However for certain low-level operations (e.g.,\n              accessing the hardware), untraced references are necessary."
                  p:
                    text "Traced references are declared with the "
                    strong:
                      text "ref"
                    text "keyword; untraced references are declared\n              with the "
                    strong:
                      text "ptr"
                    text "keyword."
                  p:
                    text "The empty "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "[]"
                    text "subscript notation can be used to\n              "
                    em:
                      text "derefer"
                    text "a reference, meaning to retrieve the item the reference points to. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "."
                    text "(access a tuple/object field operator) and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "[]"
                    text "(array/string/sequence index operator)\n              operators perform implicit dereferencing operations for reference types:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "type"
                    span(class = "Identifier"):
                      text "Node"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "ref"
                    span(class = "Keyword"):
                      text "object"
                    span(class = "Identifier"):
                      text "le"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "ri"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "Node"
                    span(class = "Identifier"):
                      text "data"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "Node"
                    span(class = "Identifier"):
                      text "new"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "n"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "data"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "9"
                    span(class = "Comment"):
                      text "# no need to write n[].data; in fact n[].data is highly discouraged!"
                  p:
                    text "To allocate a new traced object, the built-in procedure "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "new"
                    text "must be used. To deal with untraced memory, the procedures "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "alloc"
                    text ", "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "dealloc"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "realloc"
                    text "can be used. The "
                    a(class = "reference external", href = "system.html"):
                      text "system"
                    text "module's documentation\n              contains further details."
                  p:
                    text "If a reference points to "
                    em:
                      text "nothing"
                    text ", it has the value "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "nil"
                    text "."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-procedural-type", href = "#advanced-types-procedural-type"):
                      text "Procedural type"
                  p:
                    text "A procedural type is a (somewhat abstract) pointer to a procedure. "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "nil"
                    text "is an allowed value for a variable of a procedural type. Nim uses\n              procedural types to achieve "
                    span(id = "functional_1"):
                      text "functional"
                    text "programming techniques."
                  p:
                    text "Example:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "echoItem"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "echo"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "forEach"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "action"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "const"
                    span(class = "Identifier"):
                      text "data"
                    span(class = "Operator"):
                      text "="
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "5"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "7"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "11"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "d"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "Identifier"):
                      text "items"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "data"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "action"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "d"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Identifier"):
                      text "forEach"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "echoItem"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "A subtle issue with procedural types is that the calling convention of the procedure influences the type\n              compatibility: procedural types are only compatible if they have the same calling convention. The\n              different calling conventions are listed in the "
                    a(class = "reference external", href = "manual.html#types-procedural-type"):
                      text "manual"
                    text "."
                  h2:
                    a(class = "toc-backref", id = "advanced-types-distinct-type", href = "#advanced-types-distinct-type"):
                      text "Distinct\n                type"
                  p:
                    text "A Distinct type allows for the creation of new type that "
                    text "\""
                    text "does not imply a subtype relationship\n              between it and its base type"
                    text "\""
                    text ". You must "
                    strong:
                      text "explicitly"
                    text "define all behaviour for the\n              distinct type. To help with this, both the distinct type and its base type can cast from one type to the\n              other. Examples are provided in the "
                    a(class = "reference external", href = "manual.html#types-distinct-type"):
                      text "manual"
                    text "."
                  h1:
                    a(class = "toc-backref", id = "modules", href = "#modules"):
                      text "Modules"
                  p:
                    text "Nim supports splitting a program into pieces with a module concept. Each module is in its own file.\n              Modules enable "
                    span(id = "information-hiding_1"):
                      text "information hiding"
                    text "and "
                    span(id = "separate-compilation_1"):
                      text "separate compilation"
                    text ". A module may gain access to the symbols of\n              another module by using the "
                    span(id = "import_1"):
                      text "import"
                    text "statement. Only top-level symbols that are\n              marked with an asterisk ("
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "*"
                    text ") are exported:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module A"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text "`"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "seq"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "seq"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Comment"):
                      text "# allocate a new sequence:"
                    span(class = "Identifier"):
                      text "newSeq"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "result"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# multiply two int sequences:"
                    span(class = "Keyword"):
                      text "for"
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Keyword"):
                      text "in"
                    span(class = "FloatNumber"):
                      text "0."
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "len"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Operator"):
                      text "-"
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "result"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "="
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Identifier"):
                      text "b"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "Identifier"):
                      text "i"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Keyword"):
                      text "when"
                    span(class = "Identifier"):
                      text "isMainModule"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Comment"):
                      text "# test the new ``*`` operator for sequences:"
                    span(class = "Identifier"):
                      text "assert"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Operator"):
                      text "@"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Operator"):
                      text "@"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "2"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Operator"):
                      text "=="
                    span(class = "Operator"):
                      text "@"
                    span(class = "Punctuation"):
                      text "["
                    span(class = "DecNumber"):
                      text "1"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "DecNumber"):
                      text "9"
                    span(class = "Punctuation"):
                      text "]"
                    span(class = "Punctuation"):
                      text ")"
                  p:
                    text "The above module exports "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "x"
                    text "and "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "*"
                    text ", but not "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "y"
                    text "."
                  p:
                    text "A module's top-level statements are executed at the start of the program. This can be used to initialize\n              complex data structures for example."
                  p:
                    text "Each module has a special magic constant "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "isMainModule"
                    text "that is true if the module is compiled as the main file. This is\n              very useful to embed tests within the module as shown by the above example."
                  p:
                    text "A symbol of a module "
                    em:
                      text "can"
                    text "be "
                    em:
                      text "qualified"
                    text "with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "module.symbol"
                    text "syntax. And if a symbol is ambiguous, it "
                    em:
                      text "must"
                    text "be\n              qualified. A symbol is ambiguous if it is defined in two (or more) different modules and both modules are\n              imported by a third one:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module A"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*:"
                    span(class = "Identifier"):
                      text "string"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module B"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*:"
                    span(class = "Identifier"):
                      text "int"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module C"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "B"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# error: x is ambiguous"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# okay: qualifier used"
                    span(class = "Keyword"):
                      text "var"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "="
                    span(class = "DecNumber"):
                      text "4"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# not ambiguous: uses the module C's x"
                  p:
                    text "But this rule does not apply to procedures or iterators. Here the overloading rules apply:"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module A"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "$"
                    span(class = "Identifier"):
                      text "a"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module B"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Operator"):
                      text "$"
                    span(class = "Identifier"):
                      text "a"
                  pre(class = "listing"):
                    span(class = "Comment"):
                      text "# Module C"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "A"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "B"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# no error: A.x is called"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "StringLit"):
                      text "\""
                      text "\""
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# no error: B.x is called"
                    span(class = "Keyword"):
                      text "proc"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Operator"):
                      text "*"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "a"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "int"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ":"
                    span(class = "Identifier"):
                      text "string"
                    span(class = "Operator"):
                      text "="
                    span(class = "Keyword"):
                      text "discard"
                    span(class = "Identifier"):
                      text "write"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Identifier"):
                      text "stdout"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "DecNumber"):
                      text "3"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# ambiguous: which `x` is to call?"
                  h2:
                    a(class = "toc-backref", id = "modules-excluding-symbols", href = "#modules-excluding-symbols"):
                      text "Excluding\n                symbols"
                  p:
                    text "The normal "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "import"
                    text "statement will bring in all\n              exported symbols. These can be limited by naming symbols which should be excluded with the "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "except"
                    text "qualifier."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "mymodule"
                    span(class = "Keyword"):
                      text "except"
                    span(class = "Identifier"):
                      text "y"
                  h2:
                    a(class = "toc-backref", id = "modules-from-statement", href = "#modules-from-statement"):
                      text "From statement"
                  p:
                    text "We have already seen the simple "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "import"
                    text "statement that just imports all exported symbols. An alternative that only imports listed symbols is the\n              "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "from import"
                    text "statement:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "from"
                    span(class = "Identifier"):
                      text "mymodule"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "z"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "from"
                    text "statement can also force namespace\n              qualification on symbols, thereby making symbols available, but needing to be qualified to be used."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "from"
                    span(class = "Identifier"):
                      text "mymodule"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "y"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "z"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# use x without any qualification"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "from"
                    span(class = "Identifier"):
                      text "mymodule"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Keyword"):
                      text "nil"
                    span(class = "Identifier"):
                      text "mymodule"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# must qualify x with the module name as prefix"
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# using x here without qualification is a compile error"
                  p:
                    text "Since module names are generally long to be descriptive, you can also define a shorter alias to use when\n              qualifying symbols."
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "from"
                    span(class = "Identifier"):
                      text "mymodule"
                    span(class = "Keyword"):
                      text "as"
                    span(class = "Identifier"):
                      text "m"
                    span(class = "Keyword"):
                      text "import"
                    span(class = "Keyword"):
                      text "nil"
                    span(class = "Identifier"):
                      text "m"
                    span(class = "Operator"):
                      text "."
                    span(class = "Identifier"):
                      text "x"
                    span(class = "Punctuation"):
                      text "("
                    span(class = "Punctuation"):
                      text ")"
                    span(class = "Comment"):
                      text "# m is aliasing mymodule"
                  h2:
                    a(class = "toc-backref", id = "modules-include-statement", href = "#modules-include-statement"):
                      text "Include\n                statement"
                  p:
                    text "The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "include"
                    text "statement does something\n              fundamentally different than importing a module: it merely includes the contents of a file. The "
                    tt(class = "docutils literal"):
                      span(class = "pre"):
                        text "include"
                    text "statement is useful to split up a large\n              module into several files:"
                  pre(class = "listing"):
                    span(class = "Keyword"):
                      text "include"
                    span(class = "Identifier"):
                      text "fileA"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "fileB"
                    span(class = "Punctuation"):
                      text ","
                    span(class = "Identifier"):
                      text "fileC"
                  h1:
                    a(class = "toc-backref", id = "part-2", href = "#part-2"):
                      text "Part 2"
                  p:
                    text "So, now that we are done with the basics, let's see what Nim offers apart from a nice syntax for\n              procedural programming: "
                    a(class = "reference external", href = "tut2.html"):
                      text "Part II"
              tdiv(class = "row"):
                tdiv(class = "twelve-columns footer"):
                  span(class = "nim-sprite")
                  br
                  small:
                    text "Made with Nim. Generated: 2019-10-15 09:46:56 UTC"

setRenderer createDom
