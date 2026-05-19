echo "Replace volume control GUI with a TUI"

if hyprdots-cmd-missing wiremix; then
  hyprdots-pkg-add wiremix
  hyprdots-pkg-drop pavucontrol
  hyprdots-refresh-applications
  hyprdots-refresh-waybar
fi
