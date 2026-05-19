echo "Add UWSM env"

export HYPRDOTS_PATH="$HOME/.local/share/hyprdots"
export PATH="$HYPRDOTS_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export HYPRDOTS_PATH=$HOME/.local/share/hyprdots
export PATH=$HYPRDOTS_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
hyprdots-update-keyring
hyprdots-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/hyprdots/migrations
touch ~/.local/state/hyprdots/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old Hyprdots installs
hyprdots-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $HYPRDOTS_PATH/migrations/1756060611.sh
touch ~/.local/state/hyprdots/migrations/1756060611.sh

bash hyprdots-update-perform
