local wezterm = require 'wezterm'
local config = {}
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = 'SteadyBar'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.use_fancy_tab_bar = false
config.enable_wayland = true
return config