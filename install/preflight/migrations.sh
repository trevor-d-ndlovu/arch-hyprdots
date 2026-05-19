HYPRDOTS_MIGRATIONS_STATE_PATH="$HOME/.local/state/hyprdots/migrations"
mkdir -p "$HYPRDOTS_MIGRATIONS_STATE_PATH"

# On a clean install there are no migrations to run yet — the state directory
# being empty tells the migration runner to process everything. We avoid
# touching marker files here so re-installs also get fresh migrations.
# Migrations are marked as completed only after they succeed at runtime.
