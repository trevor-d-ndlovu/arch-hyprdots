echo "Change to openai-codex instead of openai-codex-bin"

if hyprdots-pkg-present openai-codex-bin; then
    hyprdots-pkg-drop openai-codex-bin
    hyprdots-pkg-add openai-codex
fi
