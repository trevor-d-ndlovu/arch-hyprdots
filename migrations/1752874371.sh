echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/hyprdots/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/hyprdots/themes/catppuccin-latte ~/.config/hyprdots/themes/
fi
