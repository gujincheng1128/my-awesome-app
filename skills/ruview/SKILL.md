---
name: ruview
description: ruview - Rust 编写的代码审查工具，结合 AI 能力进行智能代码审查。
license: MIT
tags: [code-review, rust, ai, tooling]
---

# ruview - AI 代码审查工具

## 概述

ruview 是一个用 Rust 编写的代码审查工具，集成了 AI 能力来进行智能代码审查，发现潜在问题和改进建议。

## 核心功能

- **静态分析**: 基于规则的代码质量检查
- **AI 审查**: 利用大模型进行深度审查
- **多语言支持**: 支持主流编程语言
- **CI 集成**: 无缝集成到 CI/CD 流程

## 检查类型

1. **代码风格**: 格式和风格规范
2. **潜在 Bug**: 常见错误模式
3. **性能问题**: 性能反模式
4. **安全问题**: 安全漏洞检测
5. **最佳实践**: 代码改进建议

## 安装

```bash
# 使用 cargo 安装
cargo install ruview

# 或者使用 npm
npm install -g ruview-cli
```

## 使用示例

```bash
# 审查单个文件
ruview review src/main.rs

# 审查整个项目
ruview review --project .

# 使用 AI 深度审查
ruview review --ai --model gpt-4 src/
```

## CI 集成

```yaml
# GitHub Actions 示例
- name: Code Review
  run: |
    cargo install ruview
    ruview review --project . --output review.json
  env:
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
```

## 相关链接

- GitHub: https://github.com/ruvnet/ruview
