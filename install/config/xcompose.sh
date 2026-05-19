# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run hyprdots-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/hyprdots/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$HYPRDOTS_USER_NAME"
<Multi_key> <space> <e> : "$HYPRDOTS_USER_EMAIL"
EOF
