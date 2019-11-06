#!/usr/bin/env bash
set -e

echo "Downloading google-chrome latest stable edition"
CHROME_DEB="/tmp/google-chrome.deb"
if [ ! -f $CHROME_DEB ]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $CHROME_DEB
fi
sudo dpkg -i $CHROME_DEB || sudo apt install -f
echo "Done!"

echo "Installing RedShift and Chromium Browser"
sudo apt install -y redshift redshift-gtk chromium-browser
echo "Done!"
