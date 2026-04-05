---
name: hephaestus
description: Hephaestus - 半结构化 Agentic 框架，工作流根据实际发现的任务自动构建。
license: MIT
tags: [agentic, framework, workflow, automation]
---

# Hephaestus - 半结构化 Agentic 框架

## 概述

Hephaestus 是一个半结构化的 Agentic 框架，核心特点是工作流会根据 Agent 发现的实际任务自动构建，而不是预先定义。

## 核心特性

- **自适应工作流**: 工作流根据发现的任务动态构建
- **自我发现**: Agent 自动发现需要完成的工作
- **迭代优化**: 持续评估和调整执行策略
- **结构化与非结构化结合**: 平衡计划性和灵活性

## 工作原理

1. **探索阶段**: Agent 探索环境和理解任务
2. **发现阶段**: 识别需要执行的具体任务
3. **构建阶段**: 动态构建执行工作流
4. **执行阶段**: 执行任务并反馈结果
5. **优化阶段**: 评估并改进执行策略

## 适用场景

- 复杂的软件开发任务
- 需要灵活应对的自动化流程
- 研究和探索性任务
- 需要 Agent 自主决策的场景

## 安装

```bash
pip install hephaestus-agent

# 或者使用源码
git clone https://github.com/ido-levi/hephaestus.git
cd hephaestus
pip install -e .
```

## 快速开始

```python
from hephaestus import Agent

agent = Agent(
    task="开发一个博客系统",
    mode="semi-structured"  # 启用半结构化模式
)

result = await agent.run()
```

## 相关链接

- GitHub: https://github.com/ido-levi/hephaestus
