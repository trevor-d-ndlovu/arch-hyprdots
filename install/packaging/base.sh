# Install all base packages
mapfile -t packages < <(grep -v '^#' "$HYPRDOTS_INSTALL/hyprdots-base.packages" | grep -v '^$')
hyprdots-pkg-add "${packages[@]}"
