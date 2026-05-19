# Copy over Hyprdots configs
mkdir -p ~/.config
cp -R ~/.local/share/hyprdots/config/* ~/.config/

# Use default bashrc from Hyprdots
cp ~/.local/share/hyprdots/default/bashrc ~/.bashrc
