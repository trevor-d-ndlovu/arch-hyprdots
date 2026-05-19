echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/hyprdots/themes/hackerman ]]; then
  rm -rf ~/.config/hyprdots/themes/hackerman
  ln -nfs ~/.local/share/hyprdots/themes/hackerman ~/.config/hyprdots/themes/
fi
