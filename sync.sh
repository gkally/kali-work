#!/bin/bash
set -e
RCLONE_CONF="/workspaces/kali-work/.rclone/rclone.conf"
REMOTE="gdrive:kali-work"
LOCAL="/workspaces/kali-work"
case "$1" in
  push) rclone --config "$RCLONE_CONF" sync "$LOCAL" "$REMOTE" --exclude ".git/**" --exclude ".rclone/**" --progress ;;
  pull) rclone --config "$RCLONE_CONF" sync "$REMOTE" "$LOCAL" --exclude ".git/**" --exclude ".rclone/**" --progress ;;
  *) echo "usage: ./sync.sh push|pull" ;;
esac
