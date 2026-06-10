#import "../index.typ": template, kych
#show: template.with(title: "Quick Start")

= 快速开始

== 初始化项目

TODO: 介绍如何创建一个新的怪谈

== 构建网站

网站有一个`Makefile`来自动化构建过程。要构建网站，请运行：

```sh
make html
```

这个命令将`content/`目录中的所有`.typ`文件编译成`_site/`目录中的HTML文件。您可以在浏览器中打开`_site/index.html`来查看网站。
