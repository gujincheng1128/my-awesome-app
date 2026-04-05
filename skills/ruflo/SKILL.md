---
name: ruflo
description: ruflo - Rust 编写的 AI Agent 框架，高性能和轻量级。
license: MIT
tags: [agent, rust, framework, high-performance]
---

# ruflo - 高性能 Rust Agent 框架

## 概述

ruflo 是一个用 Rust 编写的 AI Agent 框架，以高性能和低内存占用著称。适合需要快速响应的 AI 应用场景。

## 核心特点

- **Rust 性能**: 利用 Rust 的内存安全和并发优势
- **轻量级**: 极小的内存占用
- **快速启动**: 毫秒级启动时间
- **插件系统**: 灵活的扩展机制

## 使用场景

- 边缘计算 AI 应用
- 实时响应系统
- 资源受限环境
- 高并发 AI 服务

## 安装

```bash
# 从源码编译
git clone https://github.com/ruvnet/ruflo.git
cd ruflo
cargo build --release

# 使用预编译二进制
curl -fsSL https://get.ruflo.ai | sh
```

## 快速开始

```rust
use ruflo::prelude::*;

fn main() {
    let agent = Agent::new("my-agent")
        .with_llm(LLM::OpenAI {
            model: "gpt-4".into(),
            api_key: env!("OPENAI_API_KEY"),
        })
        .with_tools(vec![
            Tool::file_system(),
            Tool::web_search(),
        ]);

    agent.run("帮我分析这个代码库").await?;
}
```

## 相关链接

- GitHub: https://github.com/ruvnet/ruflo
