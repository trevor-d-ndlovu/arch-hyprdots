# Overwrite parts of the hyprdots-menu with user-specific submenus.
# See $HYPRDOTS_PATH/bin/hyprdots-menu for functions that can be overwritten.
#
# WARNING: Overwritten functions will obviously not be updated when Hyprdots changes.
#
# Example of minimal system menu:
#
# show_system_menu() {
#   case $(menu "System" "  Lock\n󰐥  Shutdown") in
#   *Lock*) hyprdots-system-lock ;;
#   *Shutdown*) hyprdots-system-shutdown ;;
#   *) back_to show_main_menu ;;
#   esac
# }
#
# Example of overriding just the about menu action: (Using zsh instead of bash (default))
#
# show_about() {
#   exec hyprdots-launch-or-focus-tui "zsh -c 'fastfetch; read -k 1'"
# }
