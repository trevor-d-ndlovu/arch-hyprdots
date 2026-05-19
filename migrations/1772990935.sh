echo "Add sample low battery notification hook"

mkdir -p ~/.config/hyprdots/hooks/battery-low.d

if [[ ! -f ~/.config/hyprdots/hooks/battery-low.d/play-warning-sound.sample ]]; then
  cp "$HYPRDOTS_PATH/config/hyprdots/hooks/battery-low.d/play-warning-sound.sample" ~/.config/hyprdots/hooks/battery-low.d/play-warning-sound.sample
fi
