#!/bin/bash
TASKS_FILE="${HOME}/.taskman_tasks"

case $1 in
  add)
    echo "[  ${@:2}" >> "$TASKS_FILE"
    echo "Added task: ${@:2}"
    ;;
  list)
    printf "Current tasks:\n"
    cat -n "$TASKS_FILE"
    ;;
  update)
    if [[ "$2" =~ ^[0-9]+$ ]]; then
      sed -i '' "${2}s/\[ \]/[x]/" "$TASKS_FILE"
      echo "Marked task $2 as completed"
    else
      echo "Error: Invalid input"
    fi
    ;;
  remove)
    if [[ "$2" =~ ^[0-9]+$ ]]; then
      sed -i '' "${2}d" "$TASKS_FILE"
      echo "Removed task $2"
    else
      echo "Error: Invalid input"
    fi
    ;;
esac
