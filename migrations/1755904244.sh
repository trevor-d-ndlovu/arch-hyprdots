echo "Update fastfetch config with new Hyprdots logo"

hyprdots-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/hyprdots/branding
cp $HYPRDOTS_PATH/icon.txt ~/.config/hyprdots/branding/about.txt
