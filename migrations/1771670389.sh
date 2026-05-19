echo "Add Logout option to system menu"

hyprdots-refresh-sddm

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Current=.*/Current=hyprdots/' /etc/sddm.conf.d/autologin.conf
fi
