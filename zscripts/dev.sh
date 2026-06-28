#!/bin/bash

exec 2>&1

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEXTJS_PROJECT_DIR=$(dirname "$SCRIPT_DIR")

cd "$NEXTJS_PROJECT_DIR"

echo "📁 项目路径: $NEXTJS_PROJECT_DIR"

# 1. 启动 dev 服务器
echo "📦 启动 Next.js dev server..."
bun run dev 2>&1
