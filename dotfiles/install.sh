#!/bin/bash
set -e
cp "$(dirname "$0")/bashrc" /home/vscode/.bashrc
echo "[+] .bashrc restored"
