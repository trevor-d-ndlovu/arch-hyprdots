# Install yay AUR helper
if ! command -v yay &>/dev/null; then
  echo "Installing yay from AUR..."

  # Cache sudo credentials and set up temporary passwordless sudo for makepkg
  sudo -v
  echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/99-hyprdots-yay > /dev/null

  cd /tmp
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm --needed
  cd /
  rm -rf /tmp/yay

  # Remove temporary passwordless sudo
  sudo rm -f /etc/sudoers.d/99-hyprdots-yay

  echo "yay installed successfully"
fi
