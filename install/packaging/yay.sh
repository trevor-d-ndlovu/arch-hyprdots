# Install yay AUR helper from AUR if not present
if ! command -v yay &>/dev/null; then
  sudo pacman -S --noconfirm --needed base-devel git
  cd /tmp
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd /
  rm -rf /tmp/yay
fi
