echo "Use Hyprdots UWSM session without graphical.target startup wait"

sudo mkdir -p /usr/local/share/wayland-sessions
sudo cp "$HYPRDOTS_PATH/default/wayland-sessions/hyprdots.desktop" /usr/local/share/wayland-sessions/hyprdots.desktop

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Session=hyprland-uwsm$/Session=hyprdots/' /etc/sddm.conf.d/autologin.conf
fi
