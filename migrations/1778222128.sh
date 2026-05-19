echo "Add sample post-boot hook"

mkdir -p ~/.config/hyprdots/hooks/post-boot.d

if [[ ! -f ~/.config/hyprdots/hooks/post-boot.d/weather.sample ]]; then
  cp "$HYPRDOTS_PATH/config/hyprdots/hooks/post-boot.d/weather.sample" ~/.config/hyprdots/hooks/post-boot.d/weather.sample
fi
