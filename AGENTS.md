# AGENTS.md

## 项目

[项目名称] — [一句话描述]

## 如何工作

1. 先读本文件。
2. 阅读 `ARCHITECTURE.md` 了解分层规则。
3. 查看 `TASKS.md` 了解当前任务。
4. 声称完成前必须成功运行 `./scripts/verify.sh`。
5. 在 `TASKS.md` 和 git 中留下干净状态。

## NEVER（绝对禁止）

- 未成功运行 `./scripts/verify.sh` 就提交。
- 修改任务范围之外的文件。
- 删除或重排 `TASKS.md` 中的条目（只能修改状态）。
- 引入循环依赖或跨层导入。
- 未经明确批准就提交密钥、`.env` 或锁文件变更。
- 测试或 lint 失败时仍宣称任务完成。

## 命令

```bash
./scripts/verify.sh          # 测试 + lint + 架构检查
# 在下方添加你的语言相关命令
# npm test / pnpm test / cargo test / pytest ...
```

## 分层（详见 ARCHITECTURE.md）

- `types` / 领域层 → 不依赖其他层
- `config` → types
- `repository` / 数据层 → config, types
- `service` → repository, config, types
- `api` / ui → service

## 完成标准

一个任务只有在以下条件全部满足时才算完成：

- `TASKS.md` 中的验收标准已满足
- `./scripts/verify.sh` 退出码为 0
- `TASKS.md` 中的进度已更新
- 变更已提交且提交信息清晰

## 查阅位置

- 架构规则：`ARCHITECTURE.md`
- 当前任务：`TASKS.md`
- 历史决策：`DECISIONS.md`
- 局部约定：`src/<模块>/AGENTS.md`（如有）
