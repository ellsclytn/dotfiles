local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font('Hack')
config.font_size = 17.0

config.enable_tab_bar = false

return config
