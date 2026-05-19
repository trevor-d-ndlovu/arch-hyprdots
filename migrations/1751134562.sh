echo "Ensure all indexes and packages are up to date"

hyprdots-update-keyring
hyprdots-refresh-pacman
sudo pacman -Syu --noconfirm
