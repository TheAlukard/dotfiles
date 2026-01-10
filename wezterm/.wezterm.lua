local wezterm = require("wezterm")

local act = wezterm.action

local config = {}

config.default_prog = {"bash"}

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("JetBrains Mono")

config.font_size = 12

config.win32_system_backdrop = "Disable"

config.audible_bell = 'Disabled'

config.window_background_opacity = 1.0

config.window_close_confirmation = 'NeverPrompt'

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.enable_wayland = false
config.enable_tab_bar = false
config.use_fancy_tab_bar = true


config.window_padding = {
    left   = 0,
    right  = 0,
    top    = 0,
    bottom = 0,
}

local wallpaper_path = "/mnt/d/Photos/Wallpapers/"

config.background = {
  -- {
  --   source = {
  --     File = wallpaper_path .. "Wallpaper304.jpg",
  --   },
  --
  --   hsb = {
  --       brightness = 1.0,
  --       hue        = 1.0,
  --       saturation = 1.0,
  --   },
  --
  --   opacity = 1.0,
  -- },
  {
    source = {
      Color = '#101010'
    },
    width   = "100%",
    height  = "100%",
    opacity = 1.0
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

config.leader = { key = "Space", mods = "SHIFT|CTRL|ALT", timeout_milliseconds = 500 }

config.keys = {
	{
        key    = ")",
		mods   = "LEADER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key    = "(",
		mods   = "LEADER|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key    = "\\",
		mods   = "LEADER",
		action = act.CloseCurrentPane({ domain = "CurrentPaneDomain", confirm = false }),
	},
	{
		key    = "}",
		mods   = "LEADER|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key    = "{",
		mods   = "LEADER|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key    = "-",
		mods   = "LEADER|ALT",
		action = act.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key    = "*",
		mods   = "LEADER|SHIFT|ALT",
		action = act.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key    = "}",
		mods   = "LEADER|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key    = "*",
		mods   = "LEADER|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key    = "-",
		mods   = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key    = "{",
		mods   = "LEADER|SHIFT",
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
        key    = "$",
        mods   = "LEADER|SHIFT",
        action = act.SpawnTab 'CurrentPaneDomain',
    },
    -- {
--         key    = "l",
--         mods   = "ALT",
--         action = act.ActivateTabRelative(1),
--     },
--     {
--         key    = "h",
--         mods   = "ALT",
--         action = act.ActivateTabRelative(-1),
--     },
--     {
--         key    = "K",
--         mods   = "LEADER|SHIFT",
--         action = act.ShowTabNavigator,
--     },
}

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL|ALT',
    action = act.ActivateTab(i - 1),
  })
end

return config
