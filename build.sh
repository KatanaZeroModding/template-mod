#!/usr/bin/env bash
# Build x86 DLL into dist/ (Git Bash / Linux).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
ID="${KZM_MOD_ID:-my-mod}"
TARGET="${KZM_NATIVE_TARGET:-i686-pc-windows-msvc}"
OUT="${ROOT}/dist/${ID}.dll"

cd "$ROOT"
mkdir -p dist
rustup target add "$TARGET" 2>/dev/null || true
cargo build --release --target "$TARGET"
cp "${ROOT}/target/${TARGET}/release/my_mod.dll" "$OUT"
echo "Built ${OUT}"
