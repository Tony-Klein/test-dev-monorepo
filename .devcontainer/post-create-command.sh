#!/bin/bash

# This script is executed after the container is created.

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install dependencies for all packages
# Use the repository setup script to sync uv environments and install dev deps
./setup.sh
