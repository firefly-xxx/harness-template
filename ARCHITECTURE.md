# ARCHITECTURE.md

## 分层

只允许单向依赖：

```
types → config → repository → service → api/ui
```

Provider / Adapter 可以注入，但禁止反向导入。

## 模块边界

- `src/` 下每个目录是一个模块。
- 模块只能通过 `index.ts` / `__init__.py` / 公开 API 导出。
- 禁止跨模块深层导入。

## 规则（由 lint / verify 强制执行）

- 禁止循环依赖。
- 禁止高层向低层反向导入。
- 测试与代码就近放置，或放在 `tests/`。
- 配置必须显式，禁止隐藏全局状态。

## 违规如何被发现

- `scripts/verify.sh` 会执行架构检查。
- CI 失败即拦截。
- 当某种违规模式重复出现时，将新检查加入 verify 脚本。

## 棘轮原则

同一类结构性错误出现超过一次时，在此文件和 verify 脚本中增加对应检查。
