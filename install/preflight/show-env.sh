# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(HYPRDOTS_CHROOT_INSTALL|HYPRDOTS_ONLINE_INSTALL|HYPRDOTS_USER_NAME|HYPRDOTS_USER_EMAIL|USER|HOME|HYPRDOTS_REPO|HYPRDOTS_REF|HYPRDOTS_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
