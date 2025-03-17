#!/bin/bash
TASKS_FILE="${HOME}/.taskman_tasks"

update)
  if [[ "$2" =~ ^[0-9]+$ ]]; then
    sed -i '' "${2}s/\[ \]/[x]/" "$TASKS_FILE"
    echo "Marked task $2 as completed"
  else
    echo "Invalid task number"
  fi
  ;;