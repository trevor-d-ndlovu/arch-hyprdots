echo "Use interactive unlock (Plymouth) selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $HYPRDOTS_PATH/default/elephant/hyprdots_unlocks.lua ~/.config/elephant/menus/hyprdots_unlocks.lua
hyprdots-restart-walker
