if [[ -n ${HYPRDOTS_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  hyprdots-pkg-add base-devel git

  # Configure pacman with hyprdots custom repo
  echo "==> Configuring pacman with hyprdots repository..."
  sudo cp -f "$HYPRDOTS_PATH/default/pacman/pacman-stable.conf" /etc/pacman.conf
  sudo cp -f "$HYPRDOTS_PATH/default/pacman/mirrorlist-stable" /etc/pacman.d/mirrorlist

  # Refresh repos
  sudo pacman -Syyuu --overwrite='*' --noconfirm
fi
