#!/bin/bash

exec 2>&1

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEXTJS_PROJECT_DIR=$(dirname "$SCRIPT_DIR")
cd "$NEXTJS_PROJECT_DIR"

if [ ! -d "$NEXTJS_PROJECT_DIR/mini-services" ]; then
    exit 0
fi

echo "📦 启动 mini-services..."
cd "$NEXTJS_PROJECT_DIR/mini-services"

if [ -f "./target/release/mini-services" ]; then
    ./target/release/mini-services &
    echo $! > "$NEXTJS_PROJECT_DIR/.zscripts/pid"
    echo "✅ mini-services started with PID $(cat "$NEXTJS_PROJECT_DIR/.zscripts/pid")"
fi
