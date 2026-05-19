echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/hyprdots/themes/osaka-jade ]]; then
  rm -rf ~/.config/hyprdots/themes/osaka-jade
  git -C ~/.local/share/hyprdots checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/hyprdots/themes/osaka-jade ~/.config/hyprdots/themes/osaka-jade
fi
