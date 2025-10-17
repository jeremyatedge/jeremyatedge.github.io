# 修改说明 (Modification Summary)

## 已完成的修改 (Completed Modifications)

### 1. 克隆项目 (Cloned Repository)
- 从 https://github.com/jeremyatedge/jeremyatedge.github.io 克隆到本地

### 2. 删除不需要的页面文件 (Removed Unnecessary Pages)
从 `_pages` 目录中删除了以下文件：
- archive-layout-with-content.md
- category-archive.html
- collection-archive.html
- markdown.md
- non-menu-page.md
- page-archive.html
- portfolio.html
- sitemap.md
- tag-archive.html
- talkmap.html
- terms.md
- year-archive.html

保留的文件 (Kept files)：
- about.md (主页 - "About me")
- 404.md (错误页面)

### 3. 导航链接 (Navigation Links)
`_data/navigation.yml` 中所有导航链接已被注释掉：
- Publications
- Learning Materials
- CV

### 4. 集合配置 (Collections Configuration)
`_config.yml` 中以下集合已被注释掉（禁用）：
- publications
- teaching
- portfolio
- talks

## 最终效果 (Final Result)
网站现在只显示 "About me" 页面，不包含其他链接如 /publications、/cv 等。

## 如何运行 (How to Run)
```bash
cd /Users/jeremyli/Documents/Personal_page/jeremyatedge.github.io
bundle install
bundle exec jekyll serve
```

访问 http://localhost:4000 查看效果
