echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/hyprdots-cmd-tzupdate/hyprdots-launch-floating-terminal-with-presentation hyprdots-tz-select/g' ~/.config/waybar/config.jsonc
