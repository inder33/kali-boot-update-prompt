#!/bin/bash

PROMPT_FLAG="/tmp/update_prompt_done"

if [ ! -f "$PROMPT_FLAG" ]; then
  echo -n "Want to update and upgrade? (y/n): "
  read ans
  if [[ "$ans" == "y" || "$ans" == "Y" ]]; then
    sudo apt update && sudo apt upgrade -y
  else
    echo "Update skipped."
  fi
  touch "$PROMPT_FLAG"
fi

