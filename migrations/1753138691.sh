echo "Install swayOSD to show volume status"

if hyprdots-cmd-missing swayosd-server; then
  hyprdots-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
