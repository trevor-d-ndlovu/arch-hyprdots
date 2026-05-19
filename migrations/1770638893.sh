echo "Add Tmux as an option with themed styling"

hyprdots-pkg-add tmux

if [[ ! -f ~/.config/tmux/tmux.conf ]]; then
  mkdir -p ~/.config/tmux
  cp $HYPRDOTS_PATH/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
  hyprdots-theme-refresh
fi
