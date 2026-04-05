---
name: superagent
description: Superagent - 一个开源的 AI Agent 框架，支持 OpenCode、Cursor 等客户端。用于构建、部署和管理 AI Agent。
license: Apache-2.0
tags: [ai-agent, llm, framework, automation]
---

# Superagent - AI Agent 框架

## 概述

Superagent 是一个开源的 AI Agent 框架，支持多种客户端集成，包括 OpenCode 和 Cursor。支持部署和管理 AI Agent，处理复杂的自然语言任务。

## 主要功能

- **多客户端支持**: 支持 OpenCode, Cursor, Claude Code 等
- **灵活的 Agent 管理**: 创建、配置和部署 AI Agent
- **工具集成**: 内置多种工具和 API 集成
- **记忆系统**: 支持长期记忆和上下文管理
- **流式响应**: 支持实时流式输出

## 使用场景

- 构建智能助手
- 自动化复杂任务
- 研究和数据分析
- 代码生成和审查
- 多步骤工作流自动化

## 安装

```bash
# 使用 npm 安装
npm install -g superagent

# 或者使用 Docker
docker pull superagent/sh
```

## 快速开始

```bash
# 初始化项目
superagent init my-agent

# 配置 Agent
cd my-agent
superagent configure

# 启动 Agent
superagent start
```

## 相关链接

- 官网: https://www.superagent.sh
- GitHub: https://github.com/supermemoryai/supermemory
- 文档: https://docs.superagent.sh
