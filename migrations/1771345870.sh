echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  hyprdots-pkg-drop lmstudio
  hyprdots-pkg-add lmstudio-bin
fi
