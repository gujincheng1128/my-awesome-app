# OpenCode 记忆文件

## 用户配置

### 硬件配置
- CPU: Intel Xeon D-1581 @ 1.80GHz
- 内存: 32GB
- 显卡: G610 (1GB)

### 软件安装位置
| 软件 | 路径 |
|------|------|
| 豆包 | F:\豆包\Doubao\Doubao.exe |
| MiniMax | F:\aimax\minimax\minimax\MiniMax.exe |
| 扣子空间 | F:\aimax\coze\COZE\扣子空间\扣子空间.exe |
| Trae CN | F:\aimax\trae\TRAE\Trae CN\Trae CN.exe |
| OpenCode | F:\aimax\opencode\op\OpenCode\OpenCode.exe |
| CodeArts Agent | F:\aimax\CodeArts\codearts\CodeArts Agent\codearts-agent.exe |
| QClaw | F:\aimax\Qclaw\Qclaw\QClaw.exe |
| VS Insiders | F:\aimax\VS\VS\Insiders\Common7\IDE\devenv.exe |

### 技能目录
- **主目录**: F:\aimax\skill\
- **配置文件**: C:\Users\Administrator\.config\opencode\

---

## 重要工作流: 代码自动工作流

### 7阶段流程
```
需求分析 → 技术调研 → 编码实现 → 代码审查 → 部署 → 优化 → 迭代
```

### 核心文件
- **配置**: F:\aimax\skill\CODE_WORKFLOW_CONFIG.json
- **详细文档**: F:\aimax\skill\CODE_AUTOMATION_WORKFLOW.md
- **技能组合**: F:\aimax\skill\SKILL_COMPOSITIONS.md

### 新技能添加规则
发现新技能时:
1. 分析功能 → 匹配阶段
2. 添加到 CODE_WORKFLOW_CONFIG.json
3. 更新 SKILL_COMPOSITIONS.md
4. 通知用户

---

## 已安装插件

| 插件 | 状态 | 说明 |
|------|------|------|
| oh-my-openagent | ✅ 已安装 | 11个专业Agent，47.9k stars |
| superagent | ✅ 已安装 | AI Agent框架 |
| opencode-supermemory | ✅ 已安装 | 永久记忆 |
| superpowers | ✅ 已安装 | Agent技能框架 |
| opencode-agent-skills | ✅ 已安装 | Agent技能插件 |

### 待安装插件
- agency-agents
- awesome-ai-agent
- opencode-expert-mode

### 已激活功能
- oh-my-opencode 11个Agent (Sisyphus, Hephaestus, Oracle, Librarian, Explore, Multimodal-Looker, Metis, Momus, Atlas, Prometheus, Sisyphus-Junior)
- ultrawork命令
- Red/Green TDD
- supermemory永久记忆

---

## 用户偏好

1. **技能目录**: F:\aimax\skill\
2. **工作流**: 代码自动工作流 (7阶段)
3. **TDD模式**: 已配置
4. **记忆功能**: supermemory + memory-skill

---

## 永久记忆系统

### 本地记忆文件 (F:\aimax\skill\memory-skill\)
- preferences.md - 用户偏好和硬件配置
- projects.md - 项目配置
- workflows.md - 工作流程
- history.md - 操作历史

### 记忆使用方式
- "记住..." → 保存新记忆
- "我之前..." → 查询记忆
- "清除记忆" → 清除记忆

---

## 记忆更新日志

### 2026-04-04
- 创建代码自动工作流
- 配置7阶段技能链
- 建立技能组合文档
- 配置OpenCode设置
- 启用memory-skill本地记忆系统
- 保存用户配置到记忆文件

**每次对话开始时，读取此文件继续工作**
