echo "Allow updating of timezone by right-clicking on the clock (or running hyprdots-cmd-tzupdate)"

if hyprdots-cmd-missing tzupdate; then
  bash "$HYPRDOTS_PATH/install/config/timezones.sh"
  hyprdots-refresh-waybar
fi
