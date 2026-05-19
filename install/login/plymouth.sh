if [[ $(plymouth-set-default-theme) != "hyprdots" ]]; then
  sudo cp -r "$HOME/.local/share/hyprdots/default/plymouth" /usr/share/plymouth/themes/hyprdots/
  sudo plymouth-set-default-theme hyprdots
fi
