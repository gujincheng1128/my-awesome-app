# OpenCode 技能安装配置

## 配置文件位置
- 项目配置: `./opencode.json`
- 技能目录: `./.opencode/skills/`

## 已成功安装的技能

### 全栈开发类别
| 技能 | 状态 | 说明 |
|------|------|------|
| GitHub MCP | ✅ 已安装 | @modelcontextprotocol/server-github |
| Docker MCP | ⚠️ 已配置 | 需要本地Docker运行 |
| Super Powers Skill | ✅ 已安装 | 链接到用户主目录 |
| React-Best-Practices Skill | ✅ 已安装 | 30+ 优化规则 |

### 数据分析师类别
| 技能 | 状态 | 说明 |
|------|------|------|
| Postgres MCP | ✅ 已安装 | @modelcontextprotocol/server-postgres |
| Tavily Search MCP | ✅ 已安装 | tavily-mcp |
| Python-Data-Science Skill | ✅ 已安装 | pandas, numpy, matplotlib |

### 安全审计员类别
| 技能 | 状态 | 说明 |
|------|------|------|
| GL-Waiter Skill | ✅ 已安装 | GitHub仓库管理 |
| Security-Audit Skill | ✅ 已安装 | 漏洞检测技能 |
| Git MCP | ✅ 已安装 | 通过GitHub MCP |

### 知识管理者类别
| 技能 | 状态 | 说明 |
|------|------|------|
| Obsidian MCP | ✅ 已安装 | @connorbritain/obsidian-mcp-server |
| Notion MCP | ✅ 已安装 | @notionhq/notion-mcp-server |
| Memory MCP | ✅ 已安装 | @modelcontextprotocol/server-memory |
| Summarize-Pro Skill | ✅ 已安装 | 文本摘要技能 |

### 其他已安装技能
| 技能 | 状态 | 说明 |
|------|------|------|
| Filesystem MCP | ✅ 已安装 | @modelcontextprotocol/server-filesystem |
| Context7 MCP | ✅ 已安装 | 远程文档查询 |
| find-skills | ✅ 已安装 | 技能发现 |
| 自我进化Memory | ✅ 已安装 | 自我进化记忆系统 |
| 前端设计 Skill | ✅ 已安装 | UI/UX开发 |
| GitHub全流程操控 | ✅ 已安装 | GitHub工作流 |
| React最佳实践 | ✅ 已安装 | React性能优化 |
| Proactive Agent | ✅ 已安装 | 主动式AI代理 |
| Ontology | ✅ 已安装 | 知识图谱设计 |

## 需要API密钥的MCP服务配置

### 环境变量配置

请在运行OpenCode前设置以下环境变量：

```bash
# GitHub
export GITHUB_PERSONAL_ACCESS_TOKEN="your-github-token"

# Tavily Search
export TAVILY_API_KEY="your-tavily-api-key"

# Context7
export CONTEXT7_API_KEY="your-context7-api-key"

# Obsidian
export OBSIDIAN_VAULT_PATH="/path/to/your/vault"
export OBSIDIAN_API_KEY="your-obsidian-api-key"

# Notion
export NOTION_TOKEN="your-notion-token"

# PostgreSQL
export DATABASE_URL="postgresql://user:password@host:port/database"
```

## 注意事项

- MCP服务器会在首次使用时自动安装(npx)
- 部分MCP服务可能需要较长时间初始化
- 建议先配置1-2个MCP服务进行测试
- 所有技能已成功添加到用户账户
