echo "Add new matte black theme"

if [[ ! -L $HOME/.config/hyprdots/themes/matte-black ]]; then
  ln -snf ~/.local/share/hyprdots/themes/matte-black ~/.config/hyprdots/themes/
fi
