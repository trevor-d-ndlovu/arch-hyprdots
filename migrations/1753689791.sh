echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/hyprdots/themes/ristretto ]]; then
  ln -nfs ~/.local/share/hyprdots/themes/ristretto ~/.config/hyprdots/themes/
fi
