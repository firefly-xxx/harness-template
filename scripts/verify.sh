#!/usr/bin/env bash
# verify.sh — 唯一的“完成”门禁
# 只有全部检查通过才退出 0。
# 失败信息要清晰、可行动，方便 Agent 自行修复。

set -euo pipefail

echo "=== Harness verify ==="

# 1. 必需文件必须存在
for f in AGENTS.md ARCHITECTURE.md TASKS.md DECISIONS.md; do
  if [[ ! -f "$f" ]]; then
    echo "ERROR: 缺少必需文件: $f"
    exit 1
  fi
done
echo "OK: 必需文档齐全"

# 2. 语言相关检查（占位，按需替换或扩展）
# 示例（Node）：
# if [[ -f package.json ]]; then
#   npm test
#   npm run lint
# fi

# 示例（Python）：
# if [[ -f pyproject.toml || -f requirements.txt ]]; then
#   pytest -q
#   ruff check .
# fi

# 示例（Go）：
# if [[ -f go.mod ]]; then
#   go test ./...
#   go vet ./...
# fi

echo "OK: 语言检查（占位 — 请在上方添加你的命令）"

# 3. 架构 / 棘轮检查（按需扩展）
# 示例：如果 .env 被跟踪则失败
if git ls-files --error-unmatch .env >/dev/null 2>&1; then
  echo "ERROR: .env 已被跟踪。请移除并加入 .gitignore"
  exit 1
fi

echo "=== 全部检查通过 ==="
exit 0
