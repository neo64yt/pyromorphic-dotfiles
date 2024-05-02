-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
wezterm.on("gui-startup", function(cmd)
    local cmd = cmd or {}
    if not cmd.cwd then
        cmd.cwd = wezterm.procinfo.current_working_dir_for_pid(wezterm.procinfo.pid())
    end
    mux.spawn_window(cmd)
end)

if wezterm.config_builder then
  config = wezterm.config_builder()
end

wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 11.0
config.color_scheme = 'Google Dark (Gogh)'
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

