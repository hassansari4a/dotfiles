-- Pull in the wezterm api
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.max_fps = 120

-- Window options
config.automatically_reload_config = true
config.quit_when_all_windows_are_closed = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.initial_cols = 150
config.initial_rows = 40

-- Font settings
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15
config.freetype_load_flags = "NO_HINTING"
config.freetype_load_target = "Light"
config.dpi = nil
config.front_end = "WebGpu"
config.line_height = 1.1

config.default_cursor_style = "SteadyUnderline"
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#b977d7",
	cursor_border = "#b977d7",
	cursor_fg = "#fff",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

return config
