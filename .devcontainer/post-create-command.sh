#!/bin/bash

# This script is executed after the container is created.

# Install uv
pip install uv

# Install dependencies for all packages
uv pip install -e cli
uv pip install -e core
uv pip install -e service
uv pip install -e utils
