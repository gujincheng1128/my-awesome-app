---
name: supermemory
description: Supermemory - AI 时代的记忆引擎，为 AI Agent 提供长期记忆和知识召回能力。
license: MIT
tags: [memory, knowledge, ai-agent, rag]
---

# Supermemory - AI 记忆引擎

## 概述

Supermemory 是一个专为 AI 时代设计的记忆引擎和知识管理应用。帮助 AI Agent 实现长期记忆、上下文保持和知识召回。

## 核心功能

- **长期记忆**: 跨会话保持信息和上下文
- **智能召回**: 快速检索相关记忆和知识
- **知识图谱**: 自动构建实体关系网络
- **增量学习**: 持续从交互中学习和更新
- **API 优先**: 提供完整的 API 接口

## 支持的客户端

- Claude Code
- Cursor
- OpenClaw / OpenCode
- 自定义集成

## 使用场景

- 个人知识管理
- AI 助手长期记忆
- 项目上下文保持
- 团队知识共享
- 智能搜索和发现

## 安装

```bash
# 安装 CLI
npm install -g supermemory

# 登录
supermemory login

# 初始化项目
supermemory init
```

## API 使用

```javascript
import { createClient } from '@supermemoryai/sdk'

const client = createClient({
  apiKey: process.env.SUPERMEMORY_API_KEY
})

// 保存记忆
await client.memories.create({
  content: '用户喜欢使用 React 框架',
  type: 'preference'
})

// 召回相关记忆
const memories = await client.memories.search({
  query: '用户的框架偏好'
})
```

## 相关链接

- GitHub: https://github.com/supermemoryai/supermemory
- 官网: https://supermemory.ai
- Claude 集成: https://github.com/supermemoryai/claude-supermemory
- OpenClaw 集成: https://github.com/supermemoryai/openclaw-supermemory
