# 全球页面访问统计设置指南

我已经为你的个人主页添加了全球页面访问统计功能。以下是设置步骤：

## 支持的服务

### 1. **Clustrmaps** （推荐 - 最简单）

Clustrmaps 提供实时世界地图热力图，显示访问者的地理位置。

**设置步骤：**

1. 访问 https://clustrmaps.com
2. 点击 "Get Code" 并注册账号
3. 添加你的网站：https://jeremyatedge.github.io
4. 拷贝 URL 中的 ID（格式如：`abc123def456`）
5. 在 `_config.yml` 中更新配置：

```yaml
pageviews_map:
  enable                 : true
  provider               : "clustrmaps"
  title                  : "Global Visitors"
  clustrmaps_id          : "your_clustrmaps_id"
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

## 其他推荐服务

- **Flag Counter**：https://flagcounter.com - 简单的国旗计数器
- **Visitor Map**：https://www.revolvermaps.com - 实时访客地球仪
- **StatsFy**：https://www.statsfy.com - 轻量级统计

## 修改的文件

1. **[_includes/page-views-map.html](_includes/page-views-map.html)** - 新增
   - 包含所有统计小部件的集成代码

2. **[_includes/sidebar.html](_includes/sidebar.html)** - 已修改
   - 在作者信息下方添加了 page-views-map include

3. **[_config.yml](_config.yml)** - 已修改
   - 添加了 `pageviews_map` 配置部分

## 外观美化建议

如果你想调整样式（如圆形边框、阴影等），可以在 `_sass/_sidebar.scss` 中添加 CSS：

```css
.page-views-map {
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  padding: 1em;
  margin: 1.5em 0;
  background: #f9f9f9;
  text-align: center;
}

.page-views-map h3 {
  margin-top: 0;
  margin-bottom: 0.5em;
  font-size: 0.95em;
}
```

## 测试

完成配置后，运行：
```bash
./serve.sh
```

访问 http://localhost:4000 查看效果。页面访问统计小部件应该显示在左边栏作者信息的下方。

---

**下一步：** 选择一个服务，获取 ID，然后更新 `_config.yml` 中的配置即可！
