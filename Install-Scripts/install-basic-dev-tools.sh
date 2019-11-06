#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# Install and configure tmux
echo "Installing tmux..."
sudo apt install -y tmux
echo "Copying tmux config..."
TMUX_CONF="${HOME}/.tmux.conf"
cp "${SCRIPT_DIR}/../Config-Files/.tmux.conf" "$TMUX_CONF"
echo "Done!"

echo "Installing and configuring vim..."
sudo apt install -y vim
git clone --depth=1 https://github.com/amix/vimrc.git "$HOME"/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number" >>~/.vim_runtime/vimrcs/basic.vim
echo "Done!"

echo "Install fuzzy-finder..."
git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME"/.fzf
yes | "$HOME"/.fzf/install
echo "Done!"

echo "Installing Visual Studio Code..."
TMP_INSTALLER="/tmp/code_latest.deb"
if [ ! -f "${TMP_INSTALLER}" ]; then
    wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest.deb
fi
sudo dpkg -i "${TMP_INSTALLER}"
echo "Done!"
