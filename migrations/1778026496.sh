echo "Install sof-firmware on Intel Panther Lake to restore DSP audio"

# linux-ptl hard-depped sof-firmware, mainline linux only optdeps it, so the
# orphan sweep after migration 1777572869 removed it. Force explicit so a
# subsequent orphan sweep in the same update cycle cannot take it again.

if hyprdots-hw-intel-ptl && ! hyprdots-hw-match "XPS"; then
  hyprdots-pkg-add sof-firmware
  sudo pacman -D --asexplicit sof-firmware >/dev/null
  hyprdots-state set reboot-required
fi
