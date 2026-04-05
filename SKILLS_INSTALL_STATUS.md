# 技能安装记录 - 2026-03-31

## 当前障碍
- **GitHub API 速率限制**：60次/小时，已耗尽
- **限速重置时间**：2026-03-31 16:20:00 (北京时间)
- `raw.githubusercontent.com`：不可访问
- `ghproxy.com` 等镜像：502 Bad Gateway
- GitHub Web：可访问，但无法直接下载文件

---

## ✅ 已确认可安装（9个 + 11个 DeerFlow 子技能）

### A. 有完整 SKILL.md 的独立仓库

| 技能名 | 仓库 | SKILL.md 路径 | Stars |
|---|---|---|---|
| `last30days` | mvanhorn/last30days-skill | `SKILL.md` | 16,593 |
| `supermemory` | supermemoryai/supermemory | `skills/supermemory/SKILL.md` | 20,660 |

### B. DeerFlow 子技能（bytedance/deer-flow 仓库）

> 安装时需要按子目录单独 clone（一个仓库包含 16 个技能）

| 技能名 | 子目录 | Stars(总) |
|---|---|---|
| `deer-deep-research` | `skills/public/deep-research` | 54,529 |
| `deer-github-research` | `skills/public/github-deep-research` | 54,529 |
| `deer-find-skills` | `skills/public/find-skills` | 54,529 |
| `deer-skill-creator` | `skills/public/skill-creator` | 54,529 |
| `deer-consulting` | `skills/public/consulting-analysis` | 54,529 |
| `deer-data-analysis` | `skills/public/data-analysis` | 54,529 |
| `deer-ppt-generation` | `skills/public/ppt-generation` | 54,529 |
| `deer-video-generation` | `skills/public/video-generation` | 54,529 |
| `deer-image-generation` | `skills/public/image-generation` | 54,529 |
| `deer-frontend-design` | `skills/public/frontend-design` | 54,529 |
| `deer-web-design` | `skills/public/web-design-guidelines` | 54,529 |
| `deer-chart-visual` | `skills/public/chart-visualization` | 54,529 |
| `deer-podcast` | `skills/public/podcast-generation` | 54,529 |
| `deer-surprise` | `skills/public/surprise-me` | 54,529 |
| `deer-vercel-deploy` | `skills/public/vercel-deploy-claimable` | 54,529 |
| `deer-claude-to-deer` | `skills/public/claude-to-deerflow` | 54,529 |

**安装命令**（限速解除后执行）：
```bash
# 方法1: git clone 全仓库（限1个API请求）
git clone --depth 1 --filter=blob:none --sparse https://github.com/bytedance/deer-flow.git
cd deer-flow && git sparse-checkout set skills/public/deep-research

# 方法2: GitHub API 下载单个文件
# (需在 16:20 后使用已认证 API 或等待限速重置)
```

---

## ❌ 不可安装

| 仓库 | 原因 |
|---|---|
| `superagent` | ❌ 未找到该仓库 |
| `DeerFlow2.0` | ❌ 仅有 Docker 项目，非技能 |
| `berriAI/litellm` | ⚠️ 有 CLAUDE.md 但非 OpenClaw SKILL.md 格式 |
| `ruvnet/ruflo` | ⚠️ 有 CLAUDE.md 但非 OpenClaw SKILL.md 格式 |
| `letta-ai/claude-subconscious` | ⚠️ `.claude-plugin` 格式，不兼容 OpenClaw |
| `ruvnet/ruview` | ❌ 纯研究项目，无 SKILL 文件 |

---

## 📋 安装步骤（16:20 后执行）

### Step 1: 克隆 bytedance/deer-flow（16个子技能）
```powershell
$dest = "F:\aimax\skill"
$base = "$env:TEMP\deer-flow-main"

# git clone 全仓库（只需1次API）
git clone --depth 1 https://github.com/bytedance/deer-flow.git $base

# 逐一复制子技能目录
$skills = @("deep-research","github-deep-research","find-skills","skill-creator",
            "consulting-analysis","data-analysis","ppt-generation","video-generation",
            "image-generation","frontend-design","web-design-guidelines","chart-visualization",
            "podcast-generation","surprise-me","vercel-deploy-claimable","claude-to-deerflow")

foreach ($s in $skills) {
    $src = "$base\skills\public\$s"
    $dst = "$dest\deer-$s"
    if (!(Test-Path "$dst\SKILL.md")) {
        Copy-Item $src $dst -Recurse -Force
        Write-Host "✅ $dst"
    }
}
Remove-Item $base -Recurse -Force
```

### Step 2: 单独安装 last30days
```powershell
# GitHub API download (16:20后)
$headers = @{ "Accept" = "application/vnd.github.v3+json" }
$resp = Invoke-RestMethod "https://api.github.com/repos/mvanhorn/last30days-skill/contents" -Headers $headers
# 下载所有文件...
```

### Step 3: 单独安装 supermemory
```powershell
# 同一仓库包含多个包，只需 skills/supermemory 子目录
```

---

## ⚠️ 已知问题

1. **git 命令未安装**：Chocolatey 安装 gh 被锁，需要清理 `C:\ProgramData\chocolatey\lib\03fa614411207ddb46e8aca6ad6abb2721319062` 后重试
2. **npm.ps1 执行策略限制**：npx 无法以脚本形式运行，已改用 `node.exe npm-cli.js` 方式调用
3. **degit 不可用**：degist 需要访问 github.com，当前网络受限

---

## 📌 下次行动

- [ ] **16:20 准时**开始安装
- [ ] 先清理 Chocolatey 锁文件
- [ ] 安装 git（via choco）
- [ ] 克隆 deer-flow 并分离16个子技能
- [ ] 安装 last30days 和 supermemory
- [ ] 验证所有技能 SKILL.md 可读
