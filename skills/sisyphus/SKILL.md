---
name: sisyphus
description: Sisyphus - Oh My OpenCode 的核心编排 Agent，支持规划、委托和并行执行。
license: MIT
tags: [agent, orchestration, planning, opencode]
---

# Sisyphus - 核心编排 Agent

## 概述

Sisyphus 是 Oh My OpenCode 的主要编排 Agent，具有强大的规划、委托和并行执行能力。适用于复杂的软件开发任务。

## 核心能力

- **智能规划**: 分析任务并制定执行计划
- **任务委托**: 将任务分配给合适的专业 Agent
- **并行执行**: 同时处理多个独立任务
- **上下文管理**: 保持项目上下文和状态
- **错误恢复**: 自动处理执行中的错误

## Agent 系统

Sisyphus 可以协调以下专业 Agent：

1. **Metis**: 预规划顾问，识别模糊和隐藏意图
2. **Hephaestus**: 开发者 Agent，处理代码实现
3. **Athena**: 研究 Agent，进行信息搜集
4. **Argus**: 审查 Agent，质量检查
5. **Momus**: 通信 Agent，用户界面交互

## 使用方式

```
# 通过 oh-my-opencode 使用 Sisyphus
/opencode --agent sisyphus "开发一个电商网站"
```

## 配置

```json
{
  "agent": {
    "sisyphus": {
      "maxParallelTasks": 5,
      "delegationStrategy": "auto",
      "enableRollback": true
    }
  }
}
```

## 相关链接

- Oh My OpenCode: https://github.com/code-yeongyu/oh-my-opencode
- 文档: https://mintlify.com/code-yeongyu/oh-my-opencode
