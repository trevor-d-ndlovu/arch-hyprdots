echo "Add right-click terminal action to waybar hyprdots menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && ! grep -A5 '"custom/hyprdots"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "hyprdots-menu",/a\    "on-click-right": "hyprdots-launch-terminal",' "$WAYBAR_CONFIG"
fi
