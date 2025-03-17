#!/bin/bash
TASKS_FILE="${HOME}/.taskman_tasks"

case $1 in
  add)
    echo "[ ] ${@:2}" >> "$TASKS_FILE"
    echo "Added task: ${@:2}"
    ;;
  list)
    printf "Current tasks:\n"
    cat -n "$TASKS_FILE"
    ;;
esac
