#!/usr/bin/env bash
set -euo pipefail

case "$1" in
  status)
    echo "opencode-notifier: status (skeleton)"
    ;;
  install)
    echo "opencode-notifier: install (skeleton)"
    ;;
  help|*)
    echo "Usage: opencode-notifier.sh [status|install|help]"
    ;;
esac
