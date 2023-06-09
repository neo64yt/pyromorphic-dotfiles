-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 11.0
config.color_scheme = 'Vs Code Dark+ (Gogh)'
config.window_background_opacity = 0.90
config.window_padding = {
  left = '15px',
  right = '15px',
  top = '15px',
  bottom = '15px',
}
config.enable_tab_bar = false
config.default_cursor_style = "BlinkingBar"
config.visual_bell = {
  fade_in_function = 'Linear',
  fade_in_duration_ms = 0,
  fade_out_function = 'Linear',
  fade_out_duration_ms = 0,
}

return config

