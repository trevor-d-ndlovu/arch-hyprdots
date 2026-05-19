echo "Uniquely identify terminal apps with custom app-ids using hyprdots-launch-tui"

# Replace terminal -e calls with hyprdots-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/hyprdots-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use hyprdots-launch-or-focus with hyprdots-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|hyprdots-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.hyprdots\.Wiremix -e wiremix|hyprdots-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
