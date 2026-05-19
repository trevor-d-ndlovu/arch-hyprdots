echo "Update Waybar for new Hyprdots menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  hyprdots-refresh-waybar
fi
