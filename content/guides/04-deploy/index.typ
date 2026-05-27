#import "../index.typ": template, tufted
#show: template.with(title: "开发")

= 开发

 你可以使用GitHub Actions轻松地将您的网站部署到GitHub Pages。

== GitHub Actions

创建一个名为`.github/workflows/deploy.yml`的文件，并添加以下内容：

```yaml
name: Deploy

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  # Build the site
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5
      - uses: typst-community/setup-typst@v4
      - run: make html
      - uses: actions/configure-pages@v4
      - uses: actions/upload-pages-artifact@v4
        with:
          path: _site

  # Publish to GitHub Pages
  deploy:
    runs-on: ubuntu-latest
    needs: build
    permissions:
      pages: write
      id-token: write
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - uses: actions/deploy-pages@v4
        id: deployment

```

== 激活GitHub Pages

1. Go to your repository on GitHub. 
2. Navigate to _Settings_, then _Pages_.
3. Under _Build and deployment_, select _GitHub Actions_ as the source.

Now, every time you push to the `main` branch, your website will be automatically built and deployed.
