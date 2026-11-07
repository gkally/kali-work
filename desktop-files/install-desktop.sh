#!/bin/bash
set -e
cp "$(dirname "$0")"/*.desktop /usr/share/applications/
for f in "$(dirname "$0")"/*.desktop; do
    cp "$f" /root/Desktop/ 2>/dev/null || true
    gio set /root/Desktop/$(basename "$f") metadata::trusted true 2>/dev/null || true
done
chmod +x /root/Desktop/*.desktop 2>/dev/null || true
update-desktop-database /usr/share/applications 2>/dev/null || true
echo "[+] Desktop launchers installed"
