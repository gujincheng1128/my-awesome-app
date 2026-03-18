#!/usr/bin/env bash
set -euo pipefail

# Simple heuristic-driven smart commit generator for atomic commits.
# Usage: opencode-superpowers smart-commit.sh [-c|--commit]
do_commit=0
for arg in "$@"; do
  case "$arg" in
    -c|--commit) do_commit=1 ;;
  esac
done

type="feat"
if git diff --cached --name-status | awk '{print $1}' | grep -qE 'M'; then
  type="fix"
fi
files=$(git diff --cached --name-only)
summary=$(echo "$files" | paste -sd ", " -)
if [ -z "$summary" ]; then
  summary=$(git diff --cached --stat | head -n 1)
fi
message="$type(opencode-superpowers): auto: $summary"
echo "$message"

if [ "$do_commit" -eq 1 ]; then
  git commit -m "$message"
  echo "Committed: $message"
fi
