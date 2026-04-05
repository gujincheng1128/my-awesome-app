# 🔌 插件安装报告

**请求时间**: 2026-04-01 17:01 GMT+8  
**系统**: Windows 10 (x64)  
**OpenClaw 版本**: 2026.3.13

---

## 📋 插件搜索结果

| 插件名 | 状态 | 位置 | 说明 |
|--------|------|------|------|
| Sisyphus | ❌ 未找到 | - | 西西弗斯插件 |
| Hephaestus | ❌ 未找到 | - | 赫菲斯托斯插件 |
| **Oracle** | ✅ 找到 | `F:\aimax\claw\Qclaw\Qclaw\resources\openclaw\node_modules\openclaw\skills\oracle` | 预言家技能 |
| Librarian | ❌ 未找到 | - | 图书管理员插件 |
| **Explore** | ✅ 找到 | `F:\aimax\CodeArts\codearts\CodeArts Agent\resources\app\extensions\resource-explorer` | 资源浏览器 |
| Multimodal-Looker | ❌ 未找到 | - | 多模态查看器 |
| Prometheus | ❌ 未找到 | - | 普罗米修斯插件 |
| Metis | ❌ 未找到 | - | 墨提斯插件 |
| Momus | ❌ 未找到 | - | 莫姆斯插件 |
| Atlas | ❌ 未找到 | - | 阿特拉斯插件 |
| Sisyphus-Junior | ❌ 未找到 | - | 小西西弗斯插件 |

---

## ✅ 已找到的插件

### 1. Oracle (预言家)
- **位置**: `F:\aimax\claw\Qclaw\Qclaw\resources\openclaw\node_modules\openclaw\skills\oracle`
- **类型**: Skill (技能)
- **功能**: 预言/预测功能
- **状态**: 已在 OpenClaw 技能目录中

### 2. Explore (资源浏览器)
- **位置**: `F:\aimax\CodeArts\codearts\CodeArts Agent\resources\app\extensions\resource-explorer`
- **类型**: Extension (扩展)
- **功能**: 资源浏览和管理
- **状态**: 在 CodeArts 中

---

## ❌ 未找到的插件 (9个)

以下插件在系统中未找到：

1. **Sisyphus** - 西西弗斯（循环任务管理？）
2. **Hephaestus** - 赫菲斯托斯（工具/锻造？）
3. **Librarian** - 图书管理员（知识管理？）
4. **Multimodal-Looker** - 多模态查看器
5. **Prometheus** - 普罗米修斯（监控/指标？）
6. **Metis** - 墨提斯（智慧/策略？）
7. **Momus** - 莫姆斯（批评/审查？）
8. **Atlas** - 阿特拉斯（地图/导航？）
9. **Sisyphus-Junior** - 小西西弗斯

---

## 🔧 当前已安装的官方插件

OpenClaw 已启用的插件：

| 插件名 | 状态 | 功能 |
|--------|------|------|
| `wechat-access` | ✅ 启用 | 微信接入 |
| `content-plugin` | ✅ 启用 | 内容插件 |
| `qmemory` | ✅ 启用 | Q记忆系统 |
| `openclaw-mem0` | ✅ 启用 | Mem0 记忆集成 |
| `tool-sandbox` | ✅ 启用 | 工具沙箱 |
| `openclaw-weixin` | ✅ 启用 | 微信集成 |
| `pcmgr-ai-security` | ✅ 启用 | PC管家 AI 安全 |
| `cron-delivery-guard` | ✅ 启用 | 定时任务守卫 |
| `prompt-optimizer` | ❌ 禁用 | 提示词优化器 |

---

## 📂 官方扩展目录

位置: `F:\aimax\claw\Qclaw\Qclaw\resources\openclaw\config\extensions`

已有的官方扩展：
- content-plugin
- cron-delivery-guard
- dingtalk-connector
- lossless-claw
- openclaw-mem0
- openclaw-qqbot
- pcmgr-ai-security
- prompt-optimizer
- qmemory
- tool-sandbox
- wechat-access
- wecom-openclaw-plugin
- weixin

---

## 💡 建议方案

### 方案 A: 使用已找到的插件
```json
{
  "plugins": {
    "entries": {
      "oracle": {
        "enabled": true
      },
      "explore": {
        "enabled": true
      }
    }
  }
}
```

### 方案 B: 从 GitHub 获取缺失插件
这些插件名称可能来自：
- OpenClaw 官方仓库
- 第三方插件市场
- 自定义开发的插件

### 方案 C: 创建自定义插件
如果这些是自定义插件，可以：
1. 在 `F:\aimax\claw\Qclaw\Qclaw\.qclaw\plugins` 创建目录
2. 添加插件配置文件
3. 在 `openclaw.json` 中注册

---

## 🔍 可能的来源

这些插件名称（希腊神话人物）暗示可能来自：

1. **OpenClaw 官方插件包** - 需要从官方仓库下载
2. **第三方插件市场** - 如 ClawHub
3. **自定义开发** - 项目特定的插件
4. **企业版功能** - 可能需要特殊许可

---

## 📝 后续步骤

### 1. 确认插件来源
- 检查是否有文档说明这些插件的来源
- 查看是否有配置文件指定插件位置

### 2. 下载缺失插件
```powershell
# 如果有 GitHub 仓库
git clone https://github.com/openclaw/plugins/sisyphus.git

# 或从 ClawHub 安装
skillhub install sisyphus
```

### 3. 手动安装
```powershell
# 复制到插件目录
Copy-Item -Path "path/to/plugin" -Destination "F:\aimax\claw\Qclaw\Qclaw\.qclaw\plugins\" -Recurse
```

### 4. 配置并启用
编辑 `openclaw.json` 添加插件配置

### 5. 重启 OpenClaw
```powershell
gateway restart
```

---

## 📊 统计

- **总请求**: 11 个插件
- **已找到**: 2 个 (18%)
- **未找到**: 9 个 (82%)

---

## ❓ 需要的信息

为了完成安装，请提供：

1. **插件来源** - 这些插件从哪里获取？
2. **GitHub 链接** - 是否有官方仓库？
3. **配置文件** - 是否有 opencode.json 或类似配置？
4. **依赖信息** - 这些插件有什么依赖？

---

**生成时间**: 2026-04-01 17:01 GMT+8
