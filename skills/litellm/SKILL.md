---
name: litellm
description: LiteLLM - 统一调用 100+ LLM API 的代理服务器，支持 OpenAI 格式调用所有主流大语言模型。
license: MIT
tags: [llm, api-gateway, multi-model, proxy]
---

# LiteLLM - 统一 LLM API 网关

## 概述

LiteLLM 是一个统一的 LLM API 网关，允许你用 OpenAI 格式调用 100+ 大语言模型 API。支持 Anthropic, Azure, Bedrock, VertexAI, Cohere, HuggingFace, VLLM 等。

## 主要功能

- **统一接口**: 用 OpenAI 格式调用所有 LLM
- **负载均衡**: 多模型间的智能负载均衡
- **成本追踪**: 详细的 token 使用和成本统计
- **速率限制**: 内置请求频率控制
- **密钥管理**: 安全的 API 密钥管理
- **代理部署**: 一键部署私有 LLM 代理

## 支持的模型

- OpenAI GPT-4, GPT-3.5
- Anthropic Claude
- Google Gemini, VertexAI
- AWS Bedrock
- Azure OpenAI
- Meta Llama
- Mistral
- 以及 100+ 更多模型

## 安装

```bash
# 使用 Docker
docker run \
  -e OPENAI_API_KEY=your-key \
  -p 4000:4000 \
  ghcr.io/berriai/litellm:main

# 或者使用 pip
pip install litellm
```

## 使用示例

```bash
# OpenAI 格式调用 Claude
curl http://localhost:4000/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "claude-3-sonnet-20240229",
    "messages": [{"role": "user", "content": "Hello!"}]
  }'
```

## 相关链接

- GitHub: https://github.com/berriAI/litellm
- 文档: https://docs.litellm.ai
- Skills: https://github.com/berriAI/litellm-skills
