echo "Install socat so we can reactivate internal display when external display is removed"

hyprdots-pkg-add socat
uwsm-app -- hyprdots-hyprland-monitor-watch &
