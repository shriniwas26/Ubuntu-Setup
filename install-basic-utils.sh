#!/bin/bash

# Install Google Chrome

(
rm -f /tmp/google-chrome-stable_current_amd64.deb &&
echo "downloading google chrome latest stable edition" &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb &&
dpkg -i /tmp/google-chrome-stable_current_amd64.deb &&
rm -f /tmp/google-chrome-stable_current_amd64.deb
) || sudo apt install -f

# Install RedShift

sudo apt install -y redshift redshift-gtk

# Install Chromium

sudo apt install -y chromium-browser
