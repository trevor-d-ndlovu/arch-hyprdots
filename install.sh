#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Hyprdots locations
export HYPRDOTS_PATH="$HOME/.local/share/hyprdots"
export HYPRDOTS_INSTALL="$HYPRDOTS_PATH/install"
export HYPRDOTS_INSTALL_LOG_FILE="/var/log/hyprdots-install.log"
export PATH="$HYPRDOTS_PATH/bin:$PATH"

# Install
source "$HYPRDOTS_INSTALL/helpers/all.sh"
source "$HYPRDOTS_INSTALL/preflight/all.sh"
source "$HYPRDOTS_INSTALL/packaging/all.sh"
source "$HYPRDOTS_INSTALL/config/all.sh"
source "$HYPRDOTS_INSTALL/login/all.sh"
source "$HYPRDOTS_INSTALL/post-install/all.sh"
