#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

case "$1" in
  status)
    echo "opencode-superpowers: status (skeleton)"
    ;;
  install)
    echo "opencode-superpowers: install (skeleton)"
    ;;
  smart-commit)
    if [ -x "$SCRIPT_DIR/scripts/smart-commit.sh" ]; then
      "$SCRIPT_DIR/scripts/smart-commit.sh" "${@:2}"
    else
      echo "Smart-commit script not found" >&2
      exit 1
    fi
    ;;
  help|*)
    echo "Usage: opencode-superpowers.sh [status|install|smart-commit|help]"
    ;;
esac
