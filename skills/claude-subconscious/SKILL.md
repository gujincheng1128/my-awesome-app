---
name: claude-subconscious
description: Claude Subconscious - Letta 的 Claude 子意识模块，用于 AI Agent 的长期记忆和人格管理。
license: MIT
tags: [claude, memory, personality, agent]
---

# Claude Subconscious - 子意识模块

## 概述

Claude Subconscious 是 Letta 平台的一个模块，为 Claude Agent 提供类似人类"潜意识"的长期记忆和人格管理能力。

## 核心功能

- **人格保持**: 在长时间对话中保持一致的人格
- **记忆分层**: 区分短期、中期和长期记忆
- **情感追踪**: 追踪用户的情感状态变化
- **上下文恢复**: 跨会话恢复对话上下文

## 记忆结构

1. **核心记忆**: 基本人格和核心价值观
2. **情景记忆**: 具体事件和经历
3. **语义记忆**: 知识、事实和概念
4. **程序记忆**: 技能和习惯

## 与 Letta 集成

```python
from letta import Letta
from letta.modules import ClaudeSubconscious

client = Letta()

agent = client.create_agent(
    name="MyAgent",
    subconscious=ClaudeSubconscious(
        personality="helpful",
        memory_layers=["core", "episodic", "semantic"]
    )
)
```

## 使用场景

- 虚拟人物/角色扮演
- 长期陪伴助手
- 心理咨询应用
- 个性化教育助手

## 相关链接

- Letta: https://letta.com
- GitHub: https://github.com/letta-ai/claude-subconscious
