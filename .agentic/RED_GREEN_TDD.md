# 🔴🟢🔵 Red/Green TDD 工作流

## 系统状态: ✅ 已激活

---

## TDD 核心原则

```
┌─────────────────────────────────────────────────────────────────┐
│                    TDD 三定律                                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1️⃣ 在写任何产品代码之前，先写一个失败的单元测试                 │
│                                                                  │
│  2️⃣ 只写一个刚好失败的测试，不能编译也算失败                    │
│                                                                  │
│  3️⃣ 只写刚好能让测试通过的产品代码，不多不少                    │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## TDD 循环图

```
┌─────────────────────────────────────────────────────────────────┐
│                     🔄 TDD 无限循环                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│            ┌──────────────────┐                                 │
│            │  🔴 RED          │                                 │
│            │  写失败的测试     │                                 │
│            └────────┬─────────┘                                 │
│                     ↓                                           │
│            ┌──────────────────┐                                 │
│            │  运行测试        │                                 │
│            │  确认失败        │                                 │
│            └────────┬─────────┘                                 │
│                     ↓                                           │
│            ┌──────────────────┐                                 │
│            │  🟢 GREEN        │                                 │
│            │  写最小代码      │                                 │
│            └────────┬─────────┘                                 │
│                     ↓                                           │
│            ┌──────────────────┐                                 │
│            │  运行测试        │                                 │
│            │  确认通过        │                                 │
│            └────────┬─────────┘                                 │
│                     ↓                                           │
│            ┌──────────────────┐                                 │
│            │  🔵 REFACTOR     │                                 │
│            │  重构优化代码    │                                 │
│            └────────┬─────────┘                                 │
│                     ↓                                           │
│            ┌──────────────────┐                                 │
│            │  运行所有测试    │                                 │
│            │  确认通过        │                                 │
│            └────────┬─────────┘                                 │
│                     ↓                                           │
│                     └──────────────────────────────────────    │
│                                 下一轮循环                       │
└─────────────────────────────────────────────────────────────────┘
```

---

## 阶段详解

### 🔴 RED - 写失败的测试

```markdown
## 目标
写一个会失败的测试，定义期望的行为

## 步骤
1. 理解需求
2. 写最简单的测试
3. 运行测试确认失败
4. 失败原因应该是 "Assertion Error" 或 "Not Implemented"

## 示例
```javascript
// 用户服务测试
describe('UserService', () => {
  it('should create a new user', () => {
    const service = new UserService();
    const user = service.createUser({
      name: 'John',
      email: 'john@example.com'
    });
    
    expect(user.id).toBeDefined();
    expect(user.name).toBe('John');
  });
});
```

## 常见失败类型
- ❌ Assertion Error - 断言失败 (期望行为)
- ❌ Reference Error - 引用错误 (未定义)
- ❌ Type Error - 类型错误 (不存在的方法)
```

### 🟢 GREEN - 让测试通过

```markdown
## 目标
写最小代码让测试通过

## 原则
- **不要过度设计**
- **不要提前优化**
- **只求通过测试**
- **可以重复代码**

## 示例
```javascript
// 最简单的实现
class UserService {
  createUser(data) {
    return {
      id: 'temp-id',
      name: data.name,
      email: data.email
    };
  }
}
```

## 验证
运行测试 → 应该全部通过 ✅
```

### 🔵 REFACTOR - 重构优化

```markdown
## 目标
改善代码质量，不改变行为

## 重构方向
- 消除重复代码
- 提高命名可读性
- 优化代码结构
- 提取公共逻辑

## 示例重构
```javascript
// 重构前
class UserService {
  createUser(data) {
    return {
      id: this.generateId(),
      name: data.name,
      email: data.email,
      createdAt: new Date()
    };
  }
}

// 重构后
class UserService {
  constructor() {
    this.users = new Map();
  }
  
  createUser(data) {
    const user = {
      id: this.generateId(),
      ...data,
      createdAt: new Date()
    };
    this.users.set(user.id, user);
    return user;
  }
  
  generateId() {
    return `user_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
  }
}
```

## 验证
运行所有测试 → 应该全部通过 ✅
```

---

## TDD 测试结构

### 测试文件组织

```
src/
├── components/
│   └── UserCard.tsx
├── services/
│   └── UserService.ts
└── utils/
    └── validation.ts

tests/                          # 测试文件放在一起
├── components/
│   └── UserCard.test.tsx
├── services/
│   └── UserService.test.ts    # ⭐ 与源文件同目录
└── utils/
    └── validation.test.ts
```

### 测试命名规范

```markdown
## 命名格式
describe('被测单元', () => {
  it('应该 [期望行为]', () => { ... });
  it('在 [条件] 下应该 [期望行为]', () => { ... });
});

## 示例
describe('Calculator', () => {
  it('should return 0 when created', () => { ... });
  it('should add two positive numbers', () => { ... });
  it('should throw error when dividing by zero', () => { ... });
});
```

---

## 测试用例设计

### 测试用例覆盖

```markdown
## 必测场景

### 1. Happy Path (正常流程)
✅ 正常输入 → 期望输出

### 2. Edge Cases (边界情况)
- 空值 (null, undefined, '')
- 零值 (0, -0)
- 最大值 (MAX_INT, 边界值)
- 最小值 (MIN_INT)

### 3. Error Cases (错误情况)
- 无效输入
- 异常条件
- 网络失败
- 权限不足

### 4. Boundary Values (边界值)
- 正好在边界
- 刚好超过边界
- 刚好低于边界
```

### 测试数据示例

```markdown
## 常见测试场景

### 字符串
- 空字符串: ''
- 普通: 'hello'
- 特殊字符: '你好世界'
- 超长: 'a'.repeat(10000)

### 数字
- 0, -1, 1
- MAX_SAFE_INTEGER
- Infinity
- NaN

### 数组
- 空数组: []
- 单元素: [1]
- 多元素: [1, 2, 3]
- 重复元素: [1, 1, 1]

### 对象
- 空对象: {}
- 普通对象: { name: 'John' }
- 嵌套对象: { user: { address: { city: 'NYC' } } }
```

---

## 框架特定配置

### JavaScript/TypeScript (Jest)

```javascript
// jest.config.js
module.exports = {
  testEnvironment: 'node',
  testMatch: ['**/*.test.ts'],
  collectCoverage: true,
  coverageThreshold: {
    global: { branches: 80, functions: 80, lines: 80 }
  }
};
```

### Python (pytest)

```python
# pytest.ini
[pytest]
testpaths = tests
python_files = test_*.py
python_functions = test_*
addopts = -v --cov=. --cov-report=html
```

### 命令速查

```bash
# Jest
npm test                    # 运行测试
npm test -- --watch         # 监视模式
npm test -- --coverage      # 覆盖率

# pytest
pytest                      # 运行测试
pytest -v                  # 详细输出
pytest --cov=.             # 覆盖率
```

---

## TDD 最佳实践

```markdown
## Do (要做)
✅ 小步前进 - 每次只做一个改动
✅ 先写测试 - 测试驱动开发
✅ 快速反馈 - 频繁运行测试
✅ 保持简洁 - 只写需要的代码
✅ 持续重构 - 每次改进一点点

## Don't (不要)
❌ 大步开发 - 一次写太多代码
❌ 后写测试 - 事后补测试
❌ 跳过失败 - 不修复失败的测试
❌ 过度设计 - 写不需要的功能
❌ 忽略警告 - 测试警告也是问题
```

---

## TDD 与其他工作流集成

```
TDD 流程
    ↓
代码审查 (deer-consulting)
    ↓
安全扫描 (sast-skills)
    ↓
测试自动化 (playwright)
    ↓
部署上线 (vercel-deploy)
    ↓
监控告警 (notifier)
```

---

## 常见问题处理

```markdown
## Q: 测试太难写?

A: 可能是因为设计不好。先思考接口设计，再写测试。

## Q: 测试总是失败?

A: 检查:
1. 测试是否正确
2. 实现是否符合测试期望
3. 是否有副作用

## Q: 覆盖率不够?

A: 
1. 检查未覆盖的分支
2. 添加边界值测试
3. 添加异常情况测试

## Q: 重构后测试全挂了?

A: 
1. 确认重构没改变行为
2. 更新测试以匹配新实现
3. 确保所有测试通过
```

---

## TDD 检查清单

```markdown
## 开始任务前
- [ ] 理解需求
- [ ] 识别测试场景
- [ ] 准备测试环境

## 写测试时
- [ ] 先写失败的测试
- [ ] 测试命名清晰
- [ ] 包含所有场景
- [ ] 运行确认失败

## 写代码时
- [ ] 最小实现
- [ ] 测试全部通过
- [ ] 没有副作用

## 重构时
- [ ] 保持行为不变
- [ ] 消除重复
- [ ] 提高可读性
- [ ] 运行所有测试
```

---

**配置时间**: 2026-04-04
**状态**: ✅ 已激活
