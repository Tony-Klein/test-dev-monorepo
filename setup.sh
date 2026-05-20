#!/usr/bin/env bash
set -euo pipefail

# Run from the repository root regardless of current working directory.
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

packages=(core utils service cli)

echo "Setting up package-local uv environments..."
for pkg in "${packages[@]}"; do
  if [[ ! -d "$pkg" ]]; then
    echo "Skipping missing package directory: $pkg"
    continue
  fi

  echo "-> $pkg"
  (
    cd "$pkg"
    uv sync --extra dev
  )
done

# Optional cleanup for legacy empty package folders from prior layout.
if [[ -d "packages" ]]; then
  for d in packages/cli packages/core packages/service packages/utils packages; do
    if [[ -d "$d" ]] && rmdir "$d" 2>/dev/null; then
      echo "Removed empty directory: $d"
    fi
  done
fi

echo "Setup complete."

echo "Next commands:"
echo "  cd cli && uv run mono-cli"
echo "  cd core && uv run pytest"
echo "  cd utils && uv run pytest"
echo "  cd service && uv run pytest"
echo "  cd cli && uv run pytest"
