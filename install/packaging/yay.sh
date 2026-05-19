# Install yay AUR helper from pre-built binary
if ! command -v yay &>/dev/null; then
  echo "Installing yay from pre-built binary..."
  cd /tmp
  curl -fsSL -o yay.tar.gz https://github.com/Jguer/yay/releases/download/v12.5.7/yay_12.5.7_x86_64.tar.gz
  tar xzf yay.tar.gz
  sudo cp yay_12.5.7_x86_64/yay /usr/local/bin/
  rm -rf yay.tar.gz yay_12.5.7_x86_64
  echo "yay installed successfully"
fi
