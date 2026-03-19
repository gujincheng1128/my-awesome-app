#!/usr/bin/env bash
set -euo pipefail

case "$1" in
  status)
    echo "antigravity-auth: status (skeleton)"
    ;;
  install)
    echo "antigravity-auth: install (skeleton)"
    ;;
  help|*)
    echo "Usage: antigravity-auth.sh [status|install|help]"
    ;;
esac
