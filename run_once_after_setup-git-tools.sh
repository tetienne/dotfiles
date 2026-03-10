#!/bin/sh
set -e

# Authenticate with GitHub and configure git credential helper
if command -v gh >/dev/null 2>&1; then
  if ! gh auth status >/dev/null 2>&1; then
    echo "GitHub CLI is not authenticated. Starting login..."
    gh auth login
  fi
fi
