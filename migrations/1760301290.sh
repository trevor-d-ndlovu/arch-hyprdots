echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/hyprdots/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/hyprdots/themes/flexoki-light ~/.config/hyprdots/themes/
fi
