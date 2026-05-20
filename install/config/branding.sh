# Setup branding directory with ASCII art logo
mkdir -p ~/.config/hyprdots/branding

LOGO_SOURCE="$HYPRDOTS_PATH/default/branding/logo.txt"
if [[ -f $LOGO_SOURCE ]]; then
  cp -f "$LOGO_SOURCE" ~/.config/hyprdots/branding/logo.txt
fi

ABOUT_SOURCE="$HYPRDOTS_PATH/default/branding/about.txt"
if [[ -f $ABOUT_SOURCE ]]; then
  cp -f "$ABOUT_SOURCE" ~/.config/hyprdots/branding/about.txt
fi
