#import "../index.typ": template, kych
#show: template.with(title: "样式")

= 样式

网站的视觉外观由 CSS 控制。

== 默认样式表

该模板接受一个 `css` 参数，该参数接受一个URL或样式表路径的数组。默认情况下，它加载三个样式表:

```typst
#let kych-web(
  // ...
  css: (
    "https://cdnjs.cloudflare.com/ajax/libs/tufte-css/1.8.0/tufte.min.css",
    "/assets/kych.css",
    "/assets/custom.css",
  ),
  // ...
)
```

== 定制样式

要覆盖默认样式，您可以在`assets/custom.css`中添加CSS规则。由于它默认最后加载，您的规则将覆盖其他规则。

例如要更改链接颜色：

```css
a {
  color: #ff0000;
}
```

== 覆盖默认样式表

要覆盖默认样式表，您可以在`config.typ`中提供自己的样式表列表。例如，要仅使用自定义样式表：

```typst
#import "@preview/kych:0.1.1"

#let template = kych.kych-web.with(
  css: ("/assets/style.css",),
)
```
