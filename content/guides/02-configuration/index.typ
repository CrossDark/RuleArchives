#import "../index.typ": template, kych
#show: template.with(title: "配置")

= 网站结构

有4个主要组成部分：

- `config.typ`— 核心布局配置。
- `content/`— 存储所有网站内容。
- `assets/`— 存储共享的静态资产，例如全局 CSS。
- `Makefile`—用于构建网站。

== API

目前，实现了三个功能：

- `kych-web`—主模板
- `margin-note`—将内容放在边距备注中（支持有限）
- `full-width`—将内容放在全宽容器中（支持有限）

== 结构和继承

该网站是分层的。根从`../config.typ`导入，而子页面从其父`../index.typ`文件导入，启用继承——无需从祖父母导入。

所有页面都继承了`config.typ`中的定义，因此可以直接使用`template`和`kych`等定义，而无需导入。

您可以在任何级别修改定义，子页面将继承更改。例如，要更改页面标题，请从父定义中导入所有定义并修改template：

```typst
#import "../index.typ": *
#show: template.with(title: "标题")
```
