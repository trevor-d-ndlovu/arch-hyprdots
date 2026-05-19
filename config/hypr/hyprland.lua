-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Load user modules from ~/.config and Hyprdots defaults from $HYPRDOTS_PATH.
package.path = os.getenv("HOME")
  .. "/.config/?.lua;"
  .. (os.getenv("HYPRDOTS_PATH") or (os.getenv("HOME") .. "/.local/share/hyprdots"))
  .. "/?.lua;"
  .. package.path

-- All Hyprdots default setups
require("default.hypr.hyprdots")

-- Change your own setup in these files and override defaults.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })
