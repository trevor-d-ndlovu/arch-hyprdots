echo "Install Impala as new wifi selection TUI"

if hyprdots-cmd-missing impala; then
  hyprdots-pkg-add impala
  hyprdots-refresh-waybar
fi
