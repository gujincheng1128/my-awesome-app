#!/usr/bin/env bash
set -euo pipefail

case "$1" in
  status)
    echo "oh-my-opencode: status (skeleton)"
    ;;
  install)
    echo "oh-my-opencode: install (skeleton)"
    ;;
  help|*)
    echo "Usage: oh-my-opencode.sh [status|install|help]"
    ;;
esac
