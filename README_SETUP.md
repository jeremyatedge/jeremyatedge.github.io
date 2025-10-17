# 如何运行这个网站

由于系统Ruby编译环境的问题，这里提供几个解决方案：

## 方案 1: 使用 Docker (推荐)

### 步骤：
1. 启动 Docker Desktop 应用
2. 在终端运行：
```bash
cd /Users/jeremyli/Documents/Personal_page/jeremyatedge.github.io
bash serve.sh
```
3. 访问 http://localhost:4000

### 如果还没有 Docker Desktop：
从 https://www.docker.com/products/docker-desktop 下载并安装

## 方案 2: 安装 Homebrew 和新版 Ruby

### 步骤：
1. 安装 Homebrew：
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. 安装 Ruby：
```bash
brew install ruby
```

3. 添加到 PATH (添加到 ~/.zshrc)：
```bash
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

4. 安装依赖并运行：
```bash
cd /Users/jeremyli/Documents/Personal_page/jeremyatedge.github.io
gem install bundler
bundle config set --local path 'vendor/bundle'
bundle install
bundle exec jekyll serve
```

5. 访问 http://localhost:4000

## 方案 3: 直接部署到 GitHub Pages

如果你只是想在线查看效果，可以直接推送到 GitHub：

```bash
cd /Users/jeremyli/Documents/Personal_page/jeremyatedge.github.io
git add .
git commit -m "Update: Keep only About me page"
git push origin master
```

然后访问 https://jeremyatedge.github.io 查看线上效果

## 已完成的修改

✅ 删除了所有不需要的页面 (publications, cv, portfolio等)  
✅ 只保留了 "About me" 主页  
✅ 导航链接已清空  
✅ 集合配置已禁用

