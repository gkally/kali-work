#!/bin/bash
set -e
cp "$(dirname "$0")/bashrc" ~/.bashrc
echo "[+] .bashrc restored"
