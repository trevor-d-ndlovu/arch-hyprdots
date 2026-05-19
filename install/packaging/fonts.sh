# Hyprdots logo in a font for Waybar use
mkdir -p "$HOME/.local/share/fonts"
cp "$HYPRDOTS_PATH/config/hyprdots.ttf" "$HOME/.local/share/fonts/"
fc-cache 2>/dev/null || true
