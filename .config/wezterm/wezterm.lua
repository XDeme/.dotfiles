local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = "Tokyo Night"

-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.warn_about_missing_glyphs = false

config.enable_scroll_bar = true
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.9
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

return config
