HYPRDOTS_MIGRATIONS_STATE_PATH=~/.local/state/hyprdots/migrations
mkdir -p $HYPRDOTS_MIGRATIONS_STATE_PATH

for file in ~/.local/share/hyprdots/migrations/*.sh; do
  touch "$HYPRDOTS_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
