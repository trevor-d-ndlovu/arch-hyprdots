echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $HYPRDOTS_PATH/default/elephant/hyprdots_background_selector.lua ~/.config/elephant/menus/hyprdots_background_selector.lua
hyprdots-restart-walker
