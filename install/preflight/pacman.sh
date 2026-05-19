if [[ -n ${HYPRDOTS_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  hyprdots-pkg-add base-devel git

  # Refresh repos
  sudo pacman -Syyu --noconfirm
fi
