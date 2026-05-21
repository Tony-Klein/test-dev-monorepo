#!/bin/bash

# This script is executed after the container is created.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

export PATH="$HOME/.local/bin:$PATH"

# Install dependencies for all packages
# Use the repository setup script to sync uv environments and install dev deps
bash ./setup.sh
