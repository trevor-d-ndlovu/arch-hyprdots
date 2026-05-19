echo "Replace bluetooth GUI with TUI"

hyprdots-pkg-add bluetui
hyprdots-pkg-drop blueberry

if ! grep -q "hyprdots-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/hyprdots-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
