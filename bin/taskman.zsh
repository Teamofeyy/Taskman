#!/bin/bash
TASKS_FILE="${HOME}/.taskman_tasks"

remove)
  if [[ "$2" =~ ^[0-9]+$ ]]; then
    sed -i '' "${2}d" "$TASKS_FILE"
    echo "Removed task $2"
  else
    echo "Invalid task number"
  fi
  ;;