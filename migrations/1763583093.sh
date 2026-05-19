echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/hyprdots/themes/ethereal ]]; then
  rm -rf ~/.config/hyprdots/themes/ethereal
  ln -nfs ~/.local/share/hyprdots/themes/ethereal ~/.config/hyprdots/themes/
fi
