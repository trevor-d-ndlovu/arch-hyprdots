echo "Add cliamp music TUI player (Super+Shift+Alt+M)"

if hyprdots-pkg-missing cliamp; then
  hyprdots-pkg-add cliamp

  if [[ -f ~/.config/hypr/bindings.conf ]] && ! grep -q "cliamp" ~/.config/hypr/bindings.conf; then
    sed -i '/^bindd = SUPER SHIFT, M, Music, exec, hyprdots-launch-or-focus spotify/a bindd = SUPER SHIFT ALT, M, Music TUI, exec, hyprdots-launch-or-focus-tui cliamp' ~/.config/hypr/bindings.conf
  fi
fi
