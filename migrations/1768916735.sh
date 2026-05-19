echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$HYPRDOTS_PATH/install/config/hardware/asus/fix-mic.sh"
source "$HYPRDOTS_PATH/install/config/hardware/asus/fix-audio-mixer.sh"

if hyprdots-hw-asus-rog; then
  hyprdots-restart-pipewire
fi
