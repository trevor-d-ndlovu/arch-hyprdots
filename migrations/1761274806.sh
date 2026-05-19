echo "Ensure node is available via mise (for treesitter cli)"

if hyprdots-cmd-missing node; then
  mise use -g node@latest
fi
