#!/usr/bin/env bash
set -e

BASIC_UTIL_PKGS="grc htop powertop tlp weather-util vlc chromium-browser etckeeper"
echo "Installing the following packages: ${BASIC_UTIL_PKGS}"
sudo apt install -y ${BASIC_UTIL_PKGS}
echo "Done!"

echo "Downloading google-chrome latest stable edition"
CHROME_INSTALLER="/tmp/google-chrome.deb"
if [ ! -f ${CHROME_INSTALLER} ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ${CHROME_INSTALLER}
fi
sudo dpkg -i ${CHROME_INSTALLER} || sudo apt install -f
echo "Done!"
