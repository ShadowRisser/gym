#!/bin/bash

exec 2>&1

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEXTJS_PROJECT_DIR=$(dirname "$SCRIPT_DIR")

cd "$NEXTJS_PROJECT_DIR"

echo "📁 项目路径: $NEXTJS_PROJECT_DIR"

# 1. 安装依赖
echo "📦 安装依赖..."
bun install 2>&1

echo "✅ 启动完成"
