# Use the hyprdots notification helper so notification handling is consistent
# (falls back to notify-send if the helper is not available)
if command -v hyprdots-notification-send &>/dev/null; then
  hyprdots-notification-send "    Learn Keybindings" "Super + K for cheatsheet.\nSuper + Space for application launcher.\nSuper + Alt + Space for Hyprdots Menu." -u critical
else
  notify-send "    Learn Keybindings" "Super + K for cheatsheet.\nSuper + Space for application launcher.\nSuper + Alt + Space for Hyprdots Menu." -u critical
fi
