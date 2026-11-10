# TASKS.md

状态取值：`todo` | `doing` | `done` | `blocked`

禁止删除或重排条目。只能修改状态和补充备注。

## 当前任务

### TASK-001

- **标题**：初始化 Harness 模板
- **状态**：done
- **范围**：根目录文档 + verify 脚本
- **验收标准**：
  - AGENTS.md、ARCHITECTURE.md、TASKS.md、DECISIONS.md 存在
  - `./scripts/verify.sh` 能运行且退出码为 0
- **备注**：初始模板已创建。

## 待办

### TASK-002

- **标题**：补充语言相关的测试与 lint 命令
- **状态**：todo
- **范围**：scripts/verify.sh
- **验收标准**：verify 脚本能运行项目测试，失败时正确退出
- **备注**：

## 已完成

（暂无）
