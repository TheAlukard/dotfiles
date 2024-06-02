local wezterm = require("wezterm")

local act = wezterm.action

local config = {}

config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe" }

config.font = wezterm.font("JetBrains Mono")

config.font_size = 12

config.color_scheme = "batman"

config.win32_system_backdrop = "Disable"

config.window_background_opacity = 1

config.window_close_confirmation = 'NeverPrompt'

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.use_fancy_tab_bar = true

config.enable_tab_bar = true

config.window_padding = {
    left   = 10,
    right  = 10,
    top    = 10,
    bottom = 10,
}

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
      File = "E:/Photos/Wallpapers/Wallpaper268.png",
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
		key    = "UpArrow",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key    = "DownArrow",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key    = "RightArrow",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key    = "LeftArrow",
		mods   = "SHIFT|ALT",
		action = act.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key    = "UpArrow",
		mods   = "ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key    = "LeftArrow",
		mods   = "ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key    = "RightArrow",
		mods   = "ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key    = "DownArrow",
		mods   = "ALT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key    = "F11",
		mods   = "",
		action = act.ToggleFullScreen,
	},
    {
        key    = "W",
        mods   = "LEADER|SHIFT",
        action = act.QuitApplication,
    },
}

return config
