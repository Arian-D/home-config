local wezterm = require 'wezterm'

local config = wezterm.config_builder()


config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 48
config.default_cursor_style = 'SteadyBar'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
local current_hour = os.date("*t").hour
local theme = 'Catppuccin ' .. ((current_hour >= 17 or current_hour < 7) and 'Frappe' or 'Latte')
config.color_scheme = theme
config.use_fancy_tab_bar = false
config.enable_wayland = true
config.mouse_wheel_scrolls_tabs = true
config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[0]
config.webgpu_power_preference = "HighPerformance"
config.front_end = "WebGpu"
return config
