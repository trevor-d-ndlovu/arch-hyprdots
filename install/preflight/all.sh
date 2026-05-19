source $HYPRDOTS_INSTALL/preflight/guard.sh
source $HYPRDOTS_INSTALL/preflight/begin.sh
run_logged $HYPRDOTS_INSTALL/preflight/show-env.sh
run_logged $HYPRDOTS_INSTALL/preflight/pacman.sh
run_logged $HYPRDOTS_INSTALL/preflight/migrations.sh
run_logged $HYPRDOTS_INSTALL/preflight/first-run-mode.sh
run_logged $HYPRDOTS_INSTALL/preflight/disable-mkinitcpio.sh
