echo "Replace wofi with walker as the default launcher"

if hyprdots-cmd-missing walker; then
  hyprdots-pkg-add walker-bin libqalculate

  hyprdots-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/hyprdots/config/walker/* ~/.config/walker/
fi
