#!/bin/bash
set -e
REMOTE="gdrive:kali-work"
LOCAL="/workspaces/kali-work"
case "$1" in
  push) rclone sync "$LOCAL" "$REMOTE" --exclude ".git/**" --exclude ".rclone/**" --progress ;;
  pull) rclone sync "$REMOTE" "$LOCAL" --exclude ".git/**" --exclude ".rclone/**" --progress ;;
  *) echo "usage: ./sync.sh push|pull" ;;
esac
