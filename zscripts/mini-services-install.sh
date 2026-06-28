#!/bin/bash

exec 2>&1

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEXTJS_PROJECT_DIR=$(dirname "$SCRIPT_DIR")
cd "$NEXTJS_PROJECT_DIR"

if [ ! -d "$NEXTJS_PROJECT_DIR/mini-services" ]; then
    exit 0
fi

cd "$NEXTJS_PROJECT_DIR/mini-services"

if [ -f "Cargo.toml" ]; then
    bunx cargo install 2>&1 || true
fi
