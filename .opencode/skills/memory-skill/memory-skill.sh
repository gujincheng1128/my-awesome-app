#!/usr/bin/env bash
set -euo pipefail

case "$1" in
  status)
    echo "memory-skill: status (skeleton)"
    ;;
  install)
    echo "memory-skill: install (skeleton)"
    ;;
  help|*)
    echo "Usage: memory-skill.sh [status|install|help]"
    ;;
esac
