# Place in each assistant's global skills directory so the Hyprdots skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$HYPRDOTS_PATH/default/hyprdots-skill" ~/.agents/skills/hyprdots
ln -sfn "$HYPRDOTS_PATH/default/hyprdots-skill" ~/.claude/skills/hyprdots
ln -sfn "$HYPRDOTS_PATH/default/hyprdots-skill" ~/.codex/skills/hyprdots
ln -sfn "$HYPRDOTS_PATH/default/hyprdots-skill" ~/.pi/agent/skills/hyprdots
