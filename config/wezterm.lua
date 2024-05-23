local wezterm = require('wezterm')
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font('Hack')
config.font_size = 17.0

config.enable_tab_bar = false

config.keys = {
    {
        key = 'h',
        mods = 'ALT',
        action = act.ActivatePaneDirection('Left'),
    },
    {
        key = 'l',
        mods = 'ALT',
        action = act.ActivatePaneDirection('Right'),
    },
    {
        key = 'k',
        mods = 'ALT',
        action = act.ActivatePaneDirection('Up'),
    },
    {
        key = 'j',
        mods = 'ALT',
        action = act.ActivatePaneDirection('Down'),
    },
    {
        key = 'f',
        mods = 'ALT',
        action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
    },
    {
        key = 'v',
        mods = 'ALT',
        action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
    },
    {
        key = 's',
        mods = 'ALT',
        action = act.PaneSelect,
    },
}

return config
