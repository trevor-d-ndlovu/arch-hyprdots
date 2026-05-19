#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export HYPRDOTS_ONLINE_INSTALL=true

ansi_art='                 ▄▄▄
 ▄█████▄    ▄███████████▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███  ███   ███   ███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███  ███   ███   ███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███  ███   ███   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█████▀    ▀█   ███   █▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                       ███   █▀                                  '

clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
HYPRDOTS_REF="${HYPRDOTS_REF:-master}"

# Set mirror based on branch
if [[ $HYPRDOTS_REF == "dev" ]]; then
  export HYPRDOTS_MIRROR=edge
  echo 'Server = https://mirror.hyprdots.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $HYPRDOTS_REF == "rc" ]]; then
  export HYPRDOTS_MIRROR=rc
  echo 'Server = https://rc-mirror.hyprdots.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export HYPRDOTS_MIRROR=stable
  echo 'Server = https://stable-mirror.hyprdots.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to trevor-d-ndlovu/arch-hyprdots
HYPRDOTS_REPO="${HYPRDOTS_REPO:-trevor-d-ndlovu/arch-hyprdots}"

echo -e "\nCloning Hyprdots from: https://github.com/${HYPRDOTS_REPO}.git"
rm -rf ~/.local/share/hyprdots/
git clone "https://github.com/${HYPRDOTS_REPO}.git" ~/.local/share/hyprdots >/dev/null

echo -e "\e[32mUsing branch: $HYPRDOTS_REF\e[0m"
cd ~/.local/share/hyprdots
git fetch origin "${HYPRDOTS_REF}" && git checkout "${HYPRDOTS_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/hyprdots/install.sh
