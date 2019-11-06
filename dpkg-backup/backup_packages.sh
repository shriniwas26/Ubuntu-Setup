#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

dpkg --get-selections > "${SCRIPT_DIR}/Package.list"
cp -Rv /etc/apt/sources.list* "${SCRIPT_DIR}/"
echo "Backup done!"
