#!/bin/bash

exec 2>&1

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEXTJS_PROJECT_DIR=$(dirname "$SCRIPT_DIR")
cd "$NEXTJS_PROJECT_DIR"

if [ ! -d "$NEXTJS_PROJECT_DIR/mini-services" ]; then
    exit 0
fi

echo "📦 构建 mini-services..."
cd "$NEXTJS_PROJECT_DIR/mini-services"

if [ -f "Cargo.toml" ]; then
    cargo build --release 2>&1 || exit 1
fi
