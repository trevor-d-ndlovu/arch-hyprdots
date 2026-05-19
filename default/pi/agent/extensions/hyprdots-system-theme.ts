/**
 * Syncs pi's light/dark theme with the active Hyprdots theme.
 *
 * Hyprdots light themes include:
 *   ~/.config/hyprdots/current/theme/light.mode
 */

import { existsSync } from "node:fs";
import { join } from "node:path";
import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

const home = process.env.HOME ?? "";
const lightModePath = join(home, ".config/hyprdots/current/theme/light.mode");

function hyprdotsPiTheme(): "light" | "dark" {
	return existsSync(lightModePath) ? "light" : "dark";
}

export default function (pi: ExtensionAPI) {
	let intervalId: ReturnType<typeof setInterval> | null = null;

	pi.on("session_start", (_event, ctx) => {
		let currentTheme = hyprdotsPiTheme();
		ctx.ui.setTheme(currentTheme);

		intervalId = setInterval(() => {
			const nextTheme = hyprdotsPiTheme();
			if (nextTheme !== currentTheme) {
				currentTheme = nextTheme;
				ctx.ui.setTheme(currentTheme);
			}
		}, 2000);
	});

	pi.on("session_shutdown", () => {
		if (intervalId) {
			clearInterval(intervalId);
			intervalId = null;
		}
	});
}
