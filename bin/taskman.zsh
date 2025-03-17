#!/bin/bash
TASKS_FILE="${HOME}/.taskman_tasks"

<<<<<<< HEAD
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
=======
update)
  if [[ "$2" =~ ^[0-9]+$ ]]; then
    sed -i '' "${2}s/\[ \]/[x]/" "$TASKS_FILE"
    echo "Marked task $2 as completed"
  else
    echo "Invalid task number"
  fi
  ;;
>>>>>>> feature/update-task
