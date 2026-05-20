#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Auto-detect Hyprdots path: use the directory containing this script, or
# fall back to ~/.local/share/hyprdots for boot.sh / curl-pipe installs.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -d $SCRIPT_DIR/bin && -d $SCRIPT_DIR/install ]]; then
  export HYPRDOTS_PATH="$SCRIPT_DIR"
elif [[ -d $HOME/.local/share/hyprdots/bin ]]; then
  export HYPRDOTS_PATH="$HOME/.local/share/hyprdots"
else
  echo "Error: Cannot find hyprdots installation. Ensure install.sh is run from the repo or ~/.local/share/hyprdots/" >&2
  exit 1
fi

export HYPRDOTS_INSTALL="$HYPRDOTS_PATH/install"
export HYPRDOTS_INSTALL_LOG_FILE="/var/log/hyprdots-install.log"
export PATH="$HYPRDOTS_PATH/bin:$PATH"

# Create the log file early so the error trap doesn't fail on missing file
sudo touch "$HYPRDOTS_INSTALL_LOG_FILE" 2>/dev/null || true

# Install
source "$HYPRDOTS_INSTALL/helpers/all.sh"
source "$HYPRDOTS_INSTALL/preflight/all.sh"
source "$HYPRDOTS_INSTALL/packaging/all.sh"
source "$HYPRDOTS_INSTALL/config/all.sh"
source "$HYPRDOTS_INSTALL/login/all.sh"
source "$HYPRDOTS_INSTALL/post-install/all.sh"
