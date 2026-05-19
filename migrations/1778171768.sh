echo "Run SwayOSD as a supervised session service"

mkdir -p ~/.config/systemd/user
cp "$HYPRDOTS_PATH/config/systemd/user/swayosd-server.service" ~/.config/systemd/user/swayosd-server.service

if [[ -f ~/.config/hypr/autostart.conf ]]; then
  sed -i '/^exec-once = uwsm-app -- swayosd-server$/d' ~/.config/hypr/autostart.conf
fi

pkill -x swayosd-server || true

bash "$HYPRDOTS_PATH/install/first-run/swayosd.sh"
