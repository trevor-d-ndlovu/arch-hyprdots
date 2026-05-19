echo "Rename screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'hyprdots-capture-screencording' "$WAYBAR_CONFIG"; then
  sed -i 's/hyprdots-capture-screencording/hyprdots-capture-screenrecording/g' "$WAYBAR_CONFIG"
  hyprdots-restart-waybar
fi
