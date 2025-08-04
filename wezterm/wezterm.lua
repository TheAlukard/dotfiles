local wezterm = require("wezterm")

local act = wezterm.action

local config = {}

config.default_prog = { "E:/Programs/MSYS2/usr/bin/bash.exe" }

config.font = wezterm.font("JetBrains Mono")

config.font_size = 12

-- config.color_scheme = "Catppuccin Mocha"

config.win32_system_backdrop = "Disable"

config.audible_bell = 'Disabled'

config.window_background_opacity = 1.0

config.window_close_confirmation = 'NeverPrompt'

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.enable_tab_bar = true
config.use_fancy_tab_bar = false

config.window_padding = {
    left   = 0,
    right  = 0,
    top    = 0,
    bottom = 0,
}

local wallpaper_path = "E:/Photos/Wallpapers/"

config.background = {
  {
    source = {
      Color = '#000000'
    },
    width   = "100%",
    height  = "100%",
    opacity = 1.0
  },
  {
    source = {
      File = wallpaper_path .. "Wallpaper268.png",
    },

    hsb = {
        brightness = 1.0,
        hue        = 1.0,
        saturation = 1.0,
    },

    opacity = 1.0,
  },
  {
    source = {
      Color = '#000000'
    },
    width   = "100%",
    height  = "100%",
    opacity = 0.8
  },
}

config.window_frame = {
	font = wezterm.font({ family = "Cascadia Code", weight = "Bold" }),

	font_size = 12.0,

	active_titlebar_bg = "#333333",

	inactive_titlebar_bg = "#333333",
}

config.colors = {

	tab_bar = {
		inactive_tab_edge = "#575757",
	},
}

config.leader = { key = "Space", mods = "SHIFT", timeout_milliseconds = 500 }

config.keys = {
	{
        key    = "H",
		mods   = "LEADER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key    = "V",
		mods   = "LEADER|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key    = "P",
		mods   = "LEADER|SHIFT",
		action = act.CloseCurrentPane({ domain = "CurrentPaneDomain", confirm = false }),
	},
	{
		key    = "K",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key    = "J",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key    = "L",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key    = "H",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key    = "K",
		mods   = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key    = "H",
		mods   = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key    = "L",
		mods   = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key    = "J",
		mods   = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key    = "F11",
		mods   = "",
		action = act.ToggleFullScreen,
	},
    -- {
    --     key    = "W",
    --     mods   = "LEADER|SHIFT",
    --     action = act.QuitApplication,
    -- },
    {
        key    = "N",
        mods   = "LEADER|SHIFT",
        action = act.SpawnTab 'CurrentPaneDomain',
    },
    {
        key    = "l",
        mods   = "ALT",
        action = act.ActivateTabRelative(1),
    },
    {
        key    = "h",
        mods   = "ALT",
        action = act.ActivateTabRelative(-1),
    },
    {
        key    = "K",
        mods   = "LEADER|SHIFT",
        action = act.ShowTabNavigator,
    },
}

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL|ALT',
    action = act.ActivateTab(i - 1),
  })
end

return config
