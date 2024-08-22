local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Fonts
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 16
config.line_height = 1.0

-- UI
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- Colors

-- local function scheme_for_appearance(appearance)
-- 	if appearance:find("Dark") then
-- 		return "Catppuccin Macchiato"
-- 	else
-- 		return "Catppuccin Latte"
-- 	end
-- end
--
-- config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

config.color_scheme = "Catppuccin Macchiato"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20

-- Mouse
config.hide_mouse_cursor_when_typing = false

return config
