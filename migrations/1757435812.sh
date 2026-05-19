echo "Update Zoom webapp to handle zoommtg:// and zoomus:// protocol links"

if [[ -f ~/.local/share/applications/Zoom.desktop ]]; then
  hyprdots-webapp-remove Zoom
  hyprdots-webapp-install Zoom https://app.zoom.us/wc/home Zoom.png "hyprdots-webapp-handler-zoom %u" "x-scheme-handler/zoommtg;x-scheme-handler/zoomus"
fi
