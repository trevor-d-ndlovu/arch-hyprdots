echo "Replace buggy native Zoom client with webapp"

if hyprdots-pkg-present zoom; then
  hyprdots-pkg-drop zoom
  hyprdots-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi
