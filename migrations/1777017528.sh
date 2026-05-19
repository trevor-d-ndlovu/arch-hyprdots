echo "Show battery status notification on right-click of the waybar battery icon"

if ! grep -q 'hyprdots-battery-status' ~/.config/waybar/config.jsonc; then
  sed -i '/"on-click": "hyprdots-menu power",/a\    "on-click-right": "notify-send -u low \\"$(hyprdots-battery-status)\\"",' ~/.config/waybar/config.jsonc
  hyprdots-restart-waybar
fi
