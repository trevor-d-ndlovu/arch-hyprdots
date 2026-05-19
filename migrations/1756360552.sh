echo "Move Hyprdots Package Repository after Arch core/extra/multilib and remove AUR"

hyprdots-refresh-pacman
sudo pacman -Syu --noconfirm
