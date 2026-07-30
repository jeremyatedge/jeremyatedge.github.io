# 全球页面访问统计设置指南

我已经为你的个人主页添加了全球页面访问统计功能。以下是设置步骤：

## 支持的服务

### 1. **MapMyVisitors**（推荐）

ClustrMaps 在 2026 年已经无法访问，原来的访客数据也不能直接迁移。当前页面已改为支持 MapMyVisitors，它提供相近的实时世界访客地图。

**设置步骤：**

1. 访问 https://mapmyvisitors.com/add
2. 添加网站 `https://jeremyatedge.github.io/` 并注册账号
3. 复制生成的嵌入代码
4. 找到嵌入代码里 `d=` 后面的 ID
5. 在 `_config.yml` 中更新配置：

```yaml
pageviews_map:
  enable                 : true
  provider               : "mapmyvisitors"
  title                  : "Global Visitors"
  mapmyvisitors_id       : "your_mapmyvisitors_id"
```

### 2. **StatCounter**

StatCounter 提供详细的访问统计和地理分布图。

**设置步骤：**

1. 访问 https://statcounter.com
2. 注册并添加你的项目
3. 获取项目ID
4. 在 `_config.yml` 中更新配置：

```yaml
pageviews_map:
  enable                 : true
  provider               : "statcounter"
  statcounter_id         : "your_project_id"
```

### 3. **自定义 HTML/JS**

如果你想使用其他服务（如 Flag Counter、VisttoCount 等），可以直接提供 HTML 代码：

```yaml
pageviews_map:
  custom_html            : '<script src="..."></script>'
```

## 其他可选服务

- **Flag Counter**：https://flagcounter.com - 简单的国旗计数器

## 修改的文件

1. **[_includes/page-views-map.html](_includes/page-views-map.html)** - 新增
   - 包含所有统计小部件的集成代码

2. **[_includes/sidebar.html](_includes/sidebar.html)** - 已修改
   - 在作者信息下方添加了 page-views-map include

3. **[_config.yml](_config.yml)** - 已修改
   - 添加了 `pageviews_map` 配置部分

地图样式位于 `_sass/_sidebar.scss`，已经与当前的简约页面统一。

## 测试

完成配置后，运行：
```bash
./serve.sh
```

访问 http://localhost:4000 查看效果。页面访问统计小部件应该显示在左边栏作者信息的下方。

---

**下一步：** 获取 MapMyVisitors ID，并更新 `_config.yml` 中的 `mapmyvisitors_id`。
