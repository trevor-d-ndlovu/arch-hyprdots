echo "Create Mako and Walker toggle configs"

mkdir -p ~/.local/state/hyprdots/toggles
[[ -f ~/.local/state/hyprdots/toggles/mako.ini ]] || touch ~/.local/state/hyprdots/toggles/mako.ini
[[ -f ~/.local/state/hyprdots/toggles/walker.css ]] || touch ~/.local/state/hyprdots/toggles/walker.css
