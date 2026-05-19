echo "Add minimal starship prompt to terminal"

if hyprdots-cmd-missing starship; then
  hyprdots-pkg-add starship
  cp $HYPRDOTS_PATH/config/starship.toml ~/.config/starship.toml
fi
