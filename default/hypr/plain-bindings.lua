require("default.hypr.bindings.media")
require("default.hypr.bindings.clipboard")
require("default.hypr.bindings.tiling-v2")
require("default.hypr.bindings.utilities")

-- Application bindings without Hyprdots's preinstalled web apps, TUIs, or desktop apps.
o.bind("SUPER + RETURN", "Terminal", { hyprdots = "terminal" })
o.bind("SUPER + SHIFT + RETURN", "Browser", { hyprdots = "browser" })
o.bind("SUPER + SHIFT + F", "File manager", { hyprdots = "nautilus" })
o.bind("SUPER + ALT + SHIFT + F", "File manager (cwd)", { hyprdots = "nautilus-cwd" })
o.bind("SUPER + SHIFT + B", "Browser", { hyprdots = "browser" })
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { hyprdots = "browser --private" })
o.bind("SUPER + SHIFT + N", "Editor", { hyprdots = "editor" })
