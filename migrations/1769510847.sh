echo "Switch back to mainline chromium now that it supports full live theming"

if hyprdots-pkg-present hyprdots-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    hyprdots-pkg-drop hyprdots-chromium
    hyprdots-pkg-add chromium
    hyprdots-theme-set-browser
  fi
fi
