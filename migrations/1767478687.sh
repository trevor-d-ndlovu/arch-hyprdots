echo "Add opencode with system theming"

hyprdots-pkg-add opencode

# Add config using hyprdots theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $HYPRDOTS_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi
