# Set identification from install inputs
if [[ -n ${HYPRDOTS_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$HYPRDOTS_USER_NAME"
fi

if [[ -n ${HYPRDOTS_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$HYPRDOTS_USER_EMAIL"
fi
