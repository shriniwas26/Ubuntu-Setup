#!/bin/bash

# Install Google Chrome

(
rm -f /tmp/google-chrome-stable_current_amd64.deb &&
echo "downloading google chrome latest stable edition" &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb &&
dpkg -i /tmp/google-chrome-stable_current_amd64.deb &&
rm -f /tmp/google-chrome-stable_current_amd64.deb
) || (sudo apt install -f && echo "Google Chrome Installed")

# Install RedShift & Chromium Browser

sudo apt install -y redshift redshift-gtk chromium-browser

# Install Mendeley
(
echo "Installing Mendeley..." &&
rm -f mendeleydesktop-latest.deb &&
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest -O mendeleydesktop-latest.deb &&
dpkg -i mendeleydesktop-latest.deb
) ||
(
sudo apt install -f &&
echo "Mendeley Installed"
)
