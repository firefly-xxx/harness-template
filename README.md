# Harness 模板

符合 Harness Engineering 实践的最小项目模板。

## 包含内容

- **仓库即唯一真相**：`AGENTS.md`、`ARCHITECTURE.md`、`TASKS.md`、`DECISIONS.md`
- **单一验证门禁**：`scripts/verify.sh`
- **运行门禁的 CI**
- **棘轮友好**：失败可转化为新检查

## 快速开始

```bash
chmod +x scripts/verify.sh
./scripts/verify.sh
```

## Agent 如何使用

1. 阅读 `AGENTS.md`
2. 从 `TASKS.md` 选择一个任务
3. 严格限制在声明的范围内
4. 声称完成前运行 `./scripts/verify.sh`
5. 更新 `TASKS.md` 中的状态

## 扩展方式

- 在 `scripts/verify.sh` 中加入你的语言测试/lint 命令
- 添加调用同一脚本的 pre-commit hook
- 当某类错误重复出现时，把检查加进脚本，并在 `ARCHITECTURE.md` 或 `AGENTS.md` 中记录
- 保持 `AGENTS.md` 精简；模块特定规则放到 `src/<模块>/AGENTS.md`

## 原则

Agent = Model + Harness  
这里的文件和脚本就是 Harness。
