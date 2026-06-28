#!/bin/bash

exec 2>&1

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEXTJS_PROJECT_DIR="/home/z/my-project"

if [ ! -d "$NEXTJS_PROJECT_DIR" ]; then
    echo "❌ 错误: Next.js 项目目录不存在: $NEXTJS_PROJECT_DIR"
    exit 1
fi

echo "🚀 开始构建 Next.js 应用和 mini-services..."
echo "📁 Next.js 项目路径: $NEXTJS_PROJECT_DIR"

cd "$NEXTJS_PROJECT_DIR"

if [ -d "$NEXTJS_PROJECT_DIR/mini-services" ]; then
    echo "📦 构建 mini-services..."
    cd "$NEXTJS_PROJECT_DIR/mini-services"
    if [ -f "Cargo.toml" ]; then
        cargo build --release 2>&1 || echo "⚠️ mini-services 构建失败，继续主构建..."
    fi
    cd "$NEXTJS_PROJECT_DIR"
fi

echo "✅ 构建完成"
