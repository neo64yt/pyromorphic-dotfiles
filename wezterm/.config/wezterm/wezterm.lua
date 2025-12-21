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

config.font = wezterm.font_with_fallback {
    'JetBrainsMono Nerd Font',
    'Kawkab Mono',
    'Noto Sans Mono CJK JP',
    'Twemoji'
}
config.font_size = 11.0
config.bidi_enabled = true
config.bidi_direction = "LeftToRight"
config.color_scheme = 'Everforest Dark Hard (Gogh)'
config.window_background_opacity = 0.90
config.window_padding = {
    left = '40px',
    right = '40px',
    top = '40px',
    bottom = '40px',
}
config.enable_wayland = true
config.enable_tab_bar = false
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 300
config.visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 150,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 150,
}

return config

