#!/bin/bash
TASKS_FILE="${HOME}/.taskman_tasks"

list)
  printf "Current tasks:\n"
  cat -n "$TASKS_FILE"
  ;;