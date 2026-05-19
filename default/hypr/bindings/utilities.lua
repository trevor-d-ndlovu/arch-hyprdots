o.bind("SUPER + SPACE", "Launch apps", { hyprdots = "walker" })
o.bind("SUPER + CTRL + E", "Emoji picker", { hyprdots = "walker -m symbols" })
o.bind_menu("SUPER + CTRL + C", "Capture menu", "capture")
o.bind_menu("SUPER + CTRL + O", "Toggle menu", "toggle")
o.bind_menu("SUPER + CTRL + H", "Hardware menu", "hardware")
o.bind_menu("SUPER + ALT + SPACE", "Hyprdots menu", nil)
o.bind_menu("SUPER + SHIFT + code:201", "Hyprdots menu", nil)
o.bind_menu("SUPER + ESCAPE", "System menu", "system")
o.bind_menu("XF86PowerOff", "Power menu", "system", { locked = true })
o.bind("SUPER + K", "Show key bindings", "hyprdots-menu-keybindings")
o.bind("SUPER + ALT + K", "Show Tmux key bindings", "hyprdots-menu-tmux-keybindings")
o.bind("XF86Calculator", "Calculator", "gnome-calculator")

o.bind("SUPER + SHIFT + SPACE", "Toggle top bar", "hyprdots-toggle-waybar")
o.bind("SUPER + SHIFT + CTRL + UP", "Move Waybar to top", "hyprdots-style-waybar-position top")
o.bind("SUPER + SHIFT + CTRL + DOWN", "Move Waybar to bottom", "hyprdots-style-waybar-position bottom")
o.bind("SUPER + SHIFT + CTRL + LEFT", "Move Waybar to left", "hyprdots-style-waybar-position left")
o.bind("SUPER + SHIFT + CTRL + RIGHT", "Move Waybar to right", "hyprdots-style-waybar-position right")
o.bind_menu("SUPER + CTRL + SPACE", "Background switcher", "background")
o.bind_menu("SUPER + SHIFT + CTRL + SPACE", "Theme menu", "theme")
o.bind("SUPER + BACKSPACE", "Toggle window transparency", "hyprdots-hyprland-window-transparency-toggle")
o.bind("SUPER + SHIFT + BACKSPACE", "Toggle window gaps", "hyprdots-hyprland-window-gaps-toggle")
o.bind("SUPER + CTRL + BACKSPACE", "Toggle single-window square aspect", "hyprdots-hyprland-window-single-square-aspect-toggle")

o.bind("SUPER + COMMA", "Dismiss last notification", "makoctl dismiss")
o.bind("SUPER + SHIFT + COMMA", "Dismiss all notifications", "makoctl dismiss --all")
o.bind("SUPER + CTRL + COMMA", "Toggle silencing notifications", "hyprdots-toggle-notification-silencing")
o.bind("SUPER + ALT + COMMA", "Invoke last notification", "makoctl invoke")
o.bind("SUPER + SHIFT + ALT + COMMA", "Restore last notification", "makoctl restore")

o.bind_toggle("SUPER + CTRL + I", "Toggle locking on idle", "idle")
o.bind_toggle("SUPER + CTRL + N", "Toggle nightlight", "nightlight")
o.bind("SUPER + CTRL + Delete", "Toggle laptop display", "hyprdots-hyprland-monitor-internal toggle")
o.bind("SUPER + CTRL + ALT + Delete", "Toggle laptop display mirroring", "hyprdots-hyprland-monitor-internal-mirror toggle")
o.bind("switch:on:Lid Switch", nil, "hyprdots-hw-external-monitors && hyprdots-hyprland-monitor-internal off", { locked = true })
o.bind("switch:off:Lid Switch", nil, "hyprdots-hyprland-monitor-internal on", { locked = true })

o.bind("PRINT", "Screenshot", "hyprdots-capture-screenshot")
o.bind_menu("ALT + PRINT", "Screenrecording", "screenrecord")
o.bind("SUPER + PRINT", "Color picker", "pkill hyprpicker || hyprpicker -a")
o.bind("SUPER + CTRL + PRINT", "Extract text (OCR) from screenshot", "hyprdots-capture-text-extraction")

o.bind_menu("SUPER + CTRL + S", "Share", "share")

o.bind("SUPER + CTRL + PERIOD", "Transcode", "hyprdots-transcode")

o.bind_menu("SUPER + CTRL + R", "Set reminder", "reminder-set")
o.bind("SUPER + CTRL + ALT + R", "Show reminders", "hyprdots-reminder show")
o.bind("SUPER + SHIFT + CTRL + R", "Clear reminders", "hyprdots-reminder clear")

o.bind("SUPER + CTRL + ALT + T", "Show time", "hyprdots-notification-time")
o.bind("SUPER + CTRL + ALT + B", "Show battery remaining", "hyprdots-notification-battery")
o.bind("SUPER + CTRL + ALT + W", "Show weather", "hyprdots-notification-weather")

o.bind("SUPER + CTRL + A", "Audio controls", { hyprdots = "audio" })
o.bind("SUPER + CTRL + B", "Bluetooth controls", { hyprdots = "bluetooth" })
o.bind("SUPER + CTRL + W", "Wifi controls", { hyprdots = "wifi" })
o.bind("SUPER + CTRL + T", "Activity", { tui = "btop" })

o.bind("SUPER + CTRL + X", "Toggle dictation", "voxtype record toggle")
o.bind("F9", "Start dictation (push-to-talk)", "voxtype record start")
o.bind("F9", "Stop dictation (push-to-talk)", "voxtype record stop", { release = true })

o.bind("SUPER + CTRL + Z", "Zoom in", function()
  local zoom = hl.get_config("cursor.zoom_factor") or 1
  hl.config({ cursor = { zoom_factor = zoom + 1 } })
end)

o.bind("SUPER + CTRL + ALT + Z", "Reset zoom", function()
  hl.config({ cursor = { zoom_factor = 1 } })
end)

o.bind("SUPER + CTRL + L", "Lock system", "hyprdots-system-lock")
