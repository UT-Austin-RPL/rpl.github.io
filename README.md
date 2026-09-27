# RPL website — GitHub Pages

This repository hosts the Robot Perception and Learning Lab website.

- Repository: `UT-Austin-RPL/rpl.github.io`
- Planned public URL: https://ut-austin-rpl.github.io/rpl.github.io/
- Generator: Jekyll, using the existing lab site's theme and content.
- Source snapshot: `UT-Austin-RPL/RPL-group-website` at `f1a0aba`, with the locally approved HumanoidMimicGen workshop removal included.

## 本次迁移范围

完整迁入 `publications/`（文章、图片、论文 PDF 和资源下载）、`talks/`、`_data/people.yml`、People 页面和 `images/members/`。同时保留首页、Research、Robots、Opportunities、Teaching 索引及其样式和图片。

本阶段不迁入四个课程子模块、课程文件、历史 Media 文章、UTCS 部署脚本或本地工作目录。Teaching 索引中的课程链接继续访问 UTCS。无需运行任何子模块初始化或清理命令。

所有原始论文、slides、人员图片按原字节复制，没有压缩或改写 PDF。构建检查将发布目录限制为 950,000,000 bytes，给 GitHub Pages 的 1 GB 限制留出余量。超过预算会停止发布，不会自动删除内容。

## 本地预览

使用 `.ruby-version` 中指定的 Ruby 3.2.4 和 Bundler 2.4.19：

```sh
gem install bundler -v 2.4.19
bundle install
bundle exec jekyll serve
```

打开 http://127.0.0.1:4000/rpl.github.io/ 。预览时保留子路径，可以尽早发现 GitHub Pages 上的路径问题。

构建与检查：

```sh
JEKYLL_ENV=production bundle exec jekyll build
bundle exec ruby scripts/verify_site.rb
```

检查覆盖所有生成页面的站内链接和资源、论文搜索索引、RSS、sitemap、canonical 地址、发布体积和课程排除。不会对外部论文网站进行批量请求。

## 首次在 GitHub 开启发布

1. 在本仓库创建首次提交并推送到 `main`。
2. 打开 GitHub 仓库 **Settings → Pages → Build and deployment → Source**，选择 **GitHub Actions**。
3. 在 **Actions → Build and deploy GitHub Pages** 中运行工作流；如果首次 push 的任务因 Pages 尚未开启而失败，启用后重新运行。
4. 确認工作流成功，以及首页、People、Publications、Research 和重点 PDF 的公开地址可访问。

仓库当前还没有绑定自定义域名；不要复制旧仓库中的 `CNAME`（其内容为无关的 `yukezhu.com`）。GitHub Pages 自定义 Actions 发布以 Pages 设置中的域名为准，不依赖该文件。

之后 push 到 `main` 会自动构建、验证、发布；PR 只构建和验证。工作流不连接 UTCS、不需要 SSH 密钥、不获取课程子模块。

## 常见内容更新

- 论文：`publications/_posts/` 和 `publications/images/`。
- 人员：`_data/people.yml` 和 `images/members/`。
- 演讲：`talks/` 和 `_pages/research.md`。
- 图片/站内链接：使用 `relative_url`；canonical、RSS 等完整地址使用 `absolute_url`，避免硬编码 GitHub 项目子路径。
- 依赖：提交 `Gemfile.lock`；它同时包含 macOS 和 Linux 平台，以便 Actions 安装相同版本。

## UTCS 转发：课程暂不迁移

旧域名的转发由 UTCS 管理员配置，不能仅靠本仓库实现。必须先验证 GitHub 版本，再启用转发。

**不能对整个旧站无条件转发。** 以下内容本阶段仍留在原站，必须先排除：

- `/cs343_spring2021/`
- `/cs343_spring2022/`
- `/cs343_spring2023/`
- `/cs343h_fall2024/`
- `/media/`，以及任何未迁入本仓库的其他归档内容。

建议只转发已经迁入的页面和目录，例如首页、`/people/`、`/publications/`、`/research/`、`/talks/`、`/images/`、`/robots/`、`/opportunities/`、`/postdoc-openings/`、`/teaching/` 和必要样式资源，并保留查询参数。

临时目标：`https://ut-austin-rpl.github.io/rpl.github.io/<原路径>`。自定义域名确定前可以使用 302；最终域名稳定后改为直接跳转到最终地址。

历史 PDF 文件名需要独立映射，优先于普通目录转发：

- `2026_06_03_building_generalist_humanoid_robots.pdf` → `building_generalist_humanoid_robots.pdf`
- `2025_10_31_towards_generalist_humanoid_robots.pdf` → `towards_generalist_humanoid_robots.pdf`
- `2024_11_04_data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf` → `data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf`

这些 PDF 映射由旧站的 HTTP 重定向配置处理；GitHub Pages 不执行 Apache `.htaccess`。

## 以后使用自定义域名

域名确定后，在 GitHub Pages 设置中添加域名并配置 DNS/HTTPS，然后修改 `_config.yml` 的两个字段：

```yaml
url: "https://你的新域名"
baseurl: ""
```

重新构建、运行检查并发布。UTCS 转发也应直接指向新域名，继续保留课程路径例外。网站上的课程链接仍需要 UTCS 服务，直到另行迁移课程。
