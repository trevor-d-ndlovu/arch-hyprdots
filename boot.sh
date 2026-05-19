#!/bin/bash

# Set install mode to online since boot.sh is used for curl/git installations
export HYPRDOTS_ONLINE_INSTALL=true

echo "==> arch-hyprdots dotfiles installer"
echo ""

HYPRDOTS_REPO="${HYPRDOTS_REPO:-trevor-d-ndlovu/arch-hyprdots}"
HYPRDOTS_REF="${HYPRDOTS_REF:-master}"

sudo pacman -Syu --noconfirm --needed git

echo -e "\nCloning arch-hyprdots from: https://github.com/${HYPRDOTS_REPO}.git"
rm -rf ~/.local/share/hyprdots/
git clone "https://github.com/${HYPRDOTS_REPO}.git" ~/.local/share/hyprdots >/dev/null

echo -e "\e[32mUsing branch: $HYPRDOTS_REF\e[0m"
cd ~/.local/share/hyprdots
git fetch origin "${HYPRDOTS_REF}" && git checkout "${HYPRDOTS_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/hyprdots/install.sh
