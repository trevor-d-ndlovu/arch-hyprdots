echo "Fix JetBrains font setting"

if [[ $(hyprdots-font-current) == JetBrains* ]]; then
  hyprdots-font-set "JetBrainsMono Nerd Font"
fi
