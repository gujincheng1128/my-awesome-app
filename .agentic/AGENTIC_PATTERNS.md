# 🤖 Agentic Engineering Patterns

## 系统状态: ✅ 已激活

---

## 核心模式概览

```
┌─────────────────────────────────────────────────────────────────┐
│              Agentic Engineering Pattern Library                  │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐             │
│  │   PLANNING │  │  EXECUTION  │  │  REFLECTION │             │
│  │   PATTERNS │  │   PATTERNS  │  │   PATTERNS  │             │
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘             │
│         │                │                │                      │
│         └────────────────┼────────────────┘                      │
│                          ↓                                       │
│              ┌───────────────────┐                              │
│              │   COLLABORATION   │                              │
│              │     PATTERNS      │                              │
│              └───────────────────┘                              │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## 1️⃣ Planning Patterns (规划模式)

### 1.1 任务分解 (Task Decomposition)

```markdown
## 模式: 递归任务分解

当面对复杂任务时:
1. 识别主要目标
2. 分解为子任务
3. 对每个子任务递归应用
4. 验证分解完整性

示例:
用户: "帮我做一个电商网站"

分解:
├── 需求分析
│   ├── 用户调研
│   └── 功能规划
├── 技术选型
│   ├── 前端框架
│   └── 后端架构
├── 开发实现
│   ├── 数据库设计
│   ├── API开发
│   └── 前端开发
└── 测试部署
    ├── 单元测试
    └── 部署上线
```

### 1.2 子目标生成 (Subgoal Generation)

```markdown
## 模式: SMART子目标

• Specific (具体) - 明确具体的可交付成果
• Measurable (可衡量) - 定义成功标准
• Achievable (可实现) - 在能力范围内
• Relevant (相关) - 与主目标相关
• Time-bound (有时限) - 设定截止时间

示例:
主目标: 完成用户认证系统

子目标:
1. 设计用户数据模型 (1h)
2. 实现注册API (2h)
3. 实现登录API (2h)
4. 添加JWT认证 (1h)
5. 编写单元测试 (2h)
```

### 1.3 计划验证 (Plan Verification)

```markdown
## 模式: 预执行验证

在执行前验证计划:
1. 检查依赖完整性
2. 识别潜在风险
3. 确认资源可用性
4. 验证逻辑一致性
```

---

## 2️⃣ Execution Patterns (执行模式)

### 2.1 工具调用 (Tool Use)

```markdown
## 模式: 工具链调用

当需要完成特定任务时:
1. 选择合适的工具
2. 准备工具参数
3. 执行并捕获结果
4. 处理工具输出
5. 决定下一步

工具选择优先级:
1. 内置工具 (Read, Write, Bash, Search)
2. 技能工具 (deer-*, tdd-workflow)
3. API工具 (WebFetch, WebSearch)
4. 自定义工具 (MCP Servers)
```

### 2.2 渐进式执行 (Iterative Execution)

```markdown
## 模式: 小步快跑

1. 最小可执行单元
2. 快速验证
3. 迭代改进
4. 增量集成

示例:
✓ 先写一个函数 → 测试
✓ 再写下一个函数 → 测试
✓ 集成测试
✓ 重构优化
```

### 2.3 错误恢复 (Error Recovery)

```markdown
## 模式: Try-Recover-Adapt

遇到错误时:
1. Try: 尝试执行
2. Catch: 捕获错误类型
3. Recover: 尝试恢复
4. Adapt: 调整策略
5. Fallback: 使用备选方案

错误类型处理:
• 语法错误 → 修正代码
• 逻辑错误 → 添加测试
• 环境错误 → 检查配置
• 资源错误 → 优化使用
• 权限错误 → 请求授权
```

---

## 3️⃣ Reflection Patterns (反思模式)

### 3.1 结果验证 (Result Verification)

```markdown
## 模式: 自我验证

执行后验证:
1. 功能验证 - 满足需求?
2. 质量验证 - 代码质量?
3. 性能验证 - 性能达标?
4. 安全验证 - 无安全漏洞?

验证清单:
- [ ] 功能正确性
- [ ] 边界条件处理
- [ ] 错误处理
- [ ] 性能指标
- [ ] 安全检查
```

### 3.2 自我批评 (Self-Critique)

```markdown
## 模式: 批判性反思

完成工作后问自己:
1. 是否遗漏了需求?
2. 是否有更优解?
3. 代码可维护性?
4. 是否有潜在风险?
5. 用户会满意吗?

自我评分:
• 功能: 1-10
• 质量: 1-10
• 效率: 1-10
• 可维护性: 1-10
```

### 3.3 知识整合 (Knowledge Integration)

```markdown
## 模式: 学习循环

1. 执行任务
2. 记录结果
3. 提取知识
4. 更新记忆
5. 优化模式

整合到:
• 技能库 - 新技能/工作流
• 模式库 - 成功的模式
• 规则库 - 最佳实践
• 教训库 - 失败教训
```

---

## 4️⃣ Collaboration Patterns (协作模式)

### 4.1 多Agent协调 (Multi-Agent Coordination)

```markdown
## 模式: Agent编排

编排多个Agent协作:
1. 定义Agent角色
2. 分配任务
3. 设置依赖关系
4. 协调执行顺序
5. 聚合结果

Agent角色:
• Planner - 规划者
• Coder - 编码者
• Reviewer - 审查者
• Tester - 测试者
• Deployer - 部署者

协调策略:
• 串行 - 按顺序执行
• 并行 - 同时执行独立任务
• 混合 - 既有串行也有并行
```

### 4.2 任务委托 (Task Delegation)

```markdown
## 模式: 智能委托

根据任务特性委托:
• 简单任务 → 直接执行
• 复杂任务 → 分解委托
• 专业任务 → 调用专业Agent
• 重复任务 → 自动化脚本

委托决策树:
┌─────────────────────────┐
│ 任务复杂度?              │
└─────────────────────────┘
         ↓
    高 ←──→ 低
    ↓         ↓
分解委托   直接执行
    
         ↓
    需要专业知识?
         ↓
      是 ←──→ 否
      ↓         ↓
  专业Agent  一般Agent
```

### 4.3 结果聚合 (Result Aggregation)

```markdown
## 模式: 汇总整合

当多个Agent完成任务时:
1. 收集各Agent结果
2. 检查完整性
3. 解决冲突
4. 整合为统一输出
5. 质量审核

聚合策略:
• 串聚合 - 按顺序合并
• 并聚合 - 并行结果合并
• 层次聚合 - 分层汇总
```

---

## 5️⃣ 代码模式库

### 5.1 设计模式

```markdown
## 常用设计模式

### 创建型
• Singleton - 单例模式
• Factory - 工厂模式
• Builder - 建造者模式

### 结构型
• Adapter - 适配器模式
• Decorator - 装饰器模式
• Facade - 外观模式

### 行为型
• Observer - 观察者模式
• Strategy - 策略模式
• Command - 命令模式
```

### 5.2 代码模板

```markdown
## 常用代码模板

### React组件
```jsx
function Component({ prop1, prop2 }) {
  const [state, setState] = useState();
  
  useEffect(() => {
    // 副作用
  }, []);
  
  return <div>{/* JSX */}</div>;
}
```

### Python服务
```python
class Service:
    def __init__(self):
        self.state = {}
    
    def process(self, data):
        # 处理逻辑
        return result
```

### API路由
```typescript
app.post('/api/endpoint', async (req, res) => {
  try {
    const result = await handler(req.body);
    res.json({ success: true, data: result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});
```
```

---

## 6️⃣ 应用场景映射

| 场景 | 推荐模式组合 |
|------|--------------|
| 新项目开发 | 任务分解 → 渐进执行 → 结果验证 |
| 代码重构 | 计划验证 → 自我批评 → 知识整合 |
| Bug修复 | 错误恢复 → 测试验证 → 模式更新 |
| 性能优化 | 性能分析 → 小步改进 → 结果验证 |
| 多人协作 | 多Agent协调 → 任务委托 → 结果聚合 |
| 技术调研 | 规划模式 → 工具调用 → 知识整合 |

---

## 7️⃣ 模式选择决策树

```
遇到任务
    ↓
是复杂任务吗? → 是 → 任务分解
    ↓ 否
有多个子任务? → 是 → 多Agent协调
    ↓ 否
需要工具? → 是 → 工具调用
    ↓ 否
直接执行
    ↓
执行成功? → 是 → 自我验证
    ↓ 否
错误恢复
```

---

**配置时间**: 2026-04-04
**状态**: ✅ 已激活
