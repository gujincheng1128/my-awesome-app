---
name: deer-flow
description: DeerFlow 2.0 - 字节跳动开源的长时程 AI Agent 框架，支持研究、编码和创作任务。
license: Apache-2.0
tags: [ai-agent, research, coding, bytedance]
---

# DeerFlow 2.0 - 字节跳动开源 AI Agent

## 概述

DeerFlow 是字节跳动开源的长时程 AI Agent 框架，专注于研究和创作任务。支持沙箱环境、记忆系统、工具调用、子 Agent 和消息网关。

## 主要特点

- **长时程任务处理**: 适合需要多步骤、长时间运行的任务
- **沙箱隔离**: 支持安全的代码执行环境
- **记忆系统**: 内置长期记忆和知识管理
- **多 Agent 协作**: 支持子 Agent 和任务分解
- **工具生态**: 丰富的内置工具和 API 集成

## 核心组件

1. **Researcher Agent**: 负责信息搜集和研究
2. **Coder Agent**: 处理代码编写和调试
3. **Creator Agent**: 负责内容创作和生成
4. **Memory System**: 跨会话知识保持
5. **Tool Gateway**: 统一的工具调用接口

## 使用场景

- 深度研究任务
- 复杂的代码生成项目
- 技术文档撰写
- 多步骤自动化工作流
- 学术研究和分析

## 安装

```bash
# 克隆仓库
git clone https://github.com/bytedance/deer-flow.git
cd deer-flow

# 安装依赖
pip install -r requirements.txt

# 运行
cd backend
python main.py
```

## 相关链接

- GitHub: https://github.com/bytedance/deer-flow
- 文档: https://deerflow.ai
