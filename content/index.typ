#import "../config.typ": template, kych
#import "@preview/cmarker:0.1.8"
#show: template

= kych

#kych.margin-note[
  The kych duck (_Aythya fuligula_) is a medium-sized diving duck native to Eurasia. Known for its diving ability, it can plunge to great depths to forage for food.
]

// NOTE: This page is generated from the README.md file
#{
  let md-content = read("../README.md")
  // let md-content = md-content.trim(regex("\s*#.+?\n")) // Remove first-level heading / 移除一级标题

  // Render markdown content with custom image handling / 使用自定义图像处理渲染 Markdown 内容
  cmarker.render(
    md-content,
    scope: (
      image: (source, alt: none, format: auto) => figure(image(
        "../" + source, // Modify paths for images / 修改图像路径
        alt: alt,
        format: format,
      )),
    ),
  )
}
