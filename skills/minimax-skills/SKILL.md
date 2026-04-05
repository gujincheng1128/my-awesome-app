---
name: minimax-skills
description: MiniMax AI 技能集 - 包含 MiniMax 大模型相关的工具和集成指南。
license: MIT
tags: [minimax, ai, llm, china]
---

# MiniMax Skills - MiniMax AI 技能集

## 概述

MiniMax Skills 是针对 MiniMax 大语言模型的集成技能集合。MiniMax 是中国领先的大模型提供商，提供多种 AI 能力。

## 主要模型

- **abab6**: MiniMax 最新一代大语言模型
- **abab5.5**: 高性能对话模型
- **MiniMax-Embed**: 文本嵌入模型
- **MiniMax-TTS**: 语音合成模型
- **MiniMax-VL**: 视觉语言模型

## 功能特点

- **长上下文**: 支持超长上下文窗口
- **高效推理**: 优化的推理引擎
- **多模态**: 支持文本、语音、图像
- **中文优化**: 优秀的中文处理能力

## 集成方式

```python
# Python SDK 使用示例
from minimax import MiniMax

client = MiniMax(api_key="your-api-key")

response = client.chat.completions.create(
    model="abab6",
    messages=[
        {"role": "user", "content": "你好，请介绍一下自己"}
    ]
)
```

## API 端点

```
POST https://api.minimax.chat/v1/text/chatcompletion_v2
```

## 使用场景

- 中文对话和内容生成
- 智能客服系统
- 内容创作辅助
- 教育和培训应用
- 企业 AI 解决方案

## 相关链接

- 官网: https://www.minimax.io
- API 文档: https://www.minimax.chat/document
- GitHub: https://github.com/silingyuan0/minimax-skills
