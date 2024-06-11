local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font('Hack')
config.font_size = 17.0

config.enable_tab_bar = false

--[[
{{#if dotter.packages.macos}}
--]]
local act = wezterm.action

config.keys = {
    {
        key = 'e',
        mods = 'CMD',
        action = act.SendKey {
            key = 'e',
            mods = 'ALT'
        },
    }
}
--[[
{{/if}}
--]]

return config
