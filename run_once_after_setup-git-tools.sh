#!/bin/sh
set -e

# Authenticate with GitHub and configure git credential helper
if command -v gh >/dev/null 2>&1; then
  if ! gh auth status >/dev/null 2>&1; then
    echo "GitHub CLI is not authenticated. Starting login..."
    gh auth login
  fi
  gh auth setup-git
fi

# Install pre-commit hooks
if command -v pre-commit >/dev/null 2>&1; then
  pre-commit install
fi
