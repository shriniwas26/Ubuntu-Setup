#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

UNIX_DEV_PKGS="autotools-dev colormake cmake build-essential git git-cola"
echo "Installing basic unix dev tools"
sudo apt install -y ${UNIX_DEV_PKGS}
echo "Done!"

echo "Installing tmux..."
sudo apt install -y tmux
echo "Copying tmux config..."
TMUX_CONF="${HOME}/.tmux.conf"
cp "${SCRIPT_DIR}/../Config-Files/.tmux.conf" "${TMUX_CONF}"
echo "Done!"

echo "Installing and configuring vim..."
sudo apt install -y vim
git clone --depth=1 https://github.com/amix/vimrc.git "${HOME}"/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number" >>~/.vim_runtime/vimrcs/basic.vim
echo "Done!"

echo "Install fuzzy-finder..."
git clone --depth 1 https://github.com/junegunn/fzf.git "${HOME}"/.fzf
yes | "${HOME}"/.fzf/install
echo "Done!"

echo "Installing Visual Studio Code..."
VSCODE_INSTALLER="/tmp/code_latest.deb"
if [ ! -f "${VSCODE_INSTALLER}" ]; then
    wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O ${VSCODE_INSTALLER}
fi
sudo dpkg -i "${VSCODE_INSTALLER}"
echo "Done!"
