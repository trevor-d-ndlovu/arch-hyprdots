# Copy over Hyprdots configs, backing up originals
backup_dir="$HOME/.config/hyprdots-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup_dir"

for item in "$HYPRDOTS_PATH/config/"*; do
  name=$(basename "$item")
  target="$HOME/.config/$name"
  if [[ -e $target ]] && [[ ! -L $target ]]; then
    cp -r "$target" "$backup_dir/"
  fi
done

cp -R "$HYPRDOTS_PATH/config/"* "$HOME/.config/"

# Use default bashrc from Hyprdots
cp "$HYPRDOTS_PATH/default/bashrc" "$HOME/.bashrc"
