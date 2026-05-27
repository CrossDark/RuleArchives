#import "../index.typ": template, tufted
#import "@preview/cmarker:0.1.8"
#import "@preview/mitex:0.2.6": mitex
#show: template

= 嵌入Markdown

你可以使用`cmarker`在你的Typst文档中嵌入Markdown内容。这在将现有的Markdown文件整合到基于Typst的网站中特别有用。要渲染数学表达式，请使用`mitex`。

```typst
#import "../index.typ": template, tufted
#import "@preview/cmarker:0.1.8"
#import "@preview/mitex:0.2.6": mitex
#show: template

#let md-content = read("tufted-titmouse.md")

#let def-dict = (
  image: (source, alt: none, format: auto) => figure(image(
    source,
    alt: alt,
    format: format,
  )),
)

#cmarker.render(md-content, math: mitex, scope: def-dict)
```

下面的内容是从一个Markdown文件渲染的：


#let md-content = read("tufted-titmouse.md")

#let def-dict = (
  image: (source, alt: none, format: auto) => figure(image(
    source,
    alt: alt,
    format: format,
  )),
)

#cmarker.render(md-content, math: mitex, scope: def-dict)
