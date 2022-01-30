# html2karax
Converts static html to Karax single page application or server sider rendering.

## Installation

```
nimble install html2karax
```

## Usage

```
html2karax yourHtmlFile.html
```

**yourHtmlFile.html**

```html
<figure role="img" aria-labelledby="cow-caption">
  <pre>
      ___________________________
  &lt; I'm an expert in my field. &gt;
      ---------------------------
          \   ^__^
           \  (oo)\_______
              (__)\       )\/\
                  ||----w |
                  ||     ||
  </pre>
  <figcaption id="cow-caption">
    A cow saying, "I'm an expert in my field." The cow is illustrated using <em>preformatted</em> text characters.
  </figcaption>
</figure>
```

**yourHtmlFile.nim**

```nim
include karax / prelude

proc createDom(): VNode =
  result = buildHtml:
    figure(role = "img", aria-labelledby = "cow-caption"):
      pre:
        text """
      ___________________________
  < I'm an expert in my field. >
      ---------------------------
          \   ^__^
           \  (oo)\_______
              (__)\       )\/\
                  ||----w |
                  ||     ||
"""
      figcaption(id = "cow-caption"):
        text "A cow saying, \"I'm an expert in my field.\" The cow is illustrated using "
        em:
          text "preformatted"
        text " text characters."

setRenderer createDom
```
