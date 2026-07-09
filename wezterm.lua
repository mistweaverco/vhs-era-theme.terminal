-------------------------------
-- vhs-era theme for WezTerm --
-------------------------------

---@type Wezterm
local wezterm = require("wezterm")

---@type wezterm.Config
local config = wezterm.config_builder()

config.color_scheme = "vhs-era"

config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.1,
}

config.colors = {
  split = "#262626",
  foreground = "#dde1e6",
  background = "#161616",
  cursor_bg = "#f2f4f8",
  cursor_fg = "#393939",
  cursor_border = "#f2f4f8",
  selection_fg = "#f2f4f8",
  selection_bg = "#525252",
  -- ANSI palette - semantic roles; VHS pink stays in tab/border chrome above.
  ansi = {
    "#262626", -- black   (color0)
    "#ff4d6d", -- red     (color1) errors / invalid
    "#55e07a", -- green   (color2) success / valid paths
    "#ffd970", -- yellow  (color3) warnings
    "#33b1ff", -- blue    (color4) info / paths
    "#c49bff", -- magenta (color5) constants
    "#55e07a", -- cyan    (color6) strings
    "#dde1e6", -- white   (color7)
  },
  brights = {
    "#393939", -- bright black   (color8)
    "#ff7a93", -- bright red     (color9)
    "#72f59a", -- bright green   (color10)
    "#ffb655", -- bright yellow  (color11)
    "#78c6ff", -- bright blue    (color12)
    "#d9b8ff", -- bright magenta (color13)
    "#72f59a", -- bright cyan    (color14)
    "#ffffff", -- bright white   (color15)
  },
  tab_bar = {
    background = "#161616",
    active_tab = {
      bg_color = "#ee5396", -- vibrant magenta
      fg_color = "#161616", -- dark text for contrast
      intensity = "Bold",
      underline = "None",
      italic = false,
    },
    inactive_tab = {
      bg_color = "#393939",
      fg_color = "#dde1e6",
      intensity = "Normal",
    },
    inactive_tab_hover = {
      bg_color = "#33b1ff", -- neon blue on hover
      fg_color = "#161616", -- dark text for strong contrast
      italic = true,
    },
    new_tab = {
      bg_color = "#161616",
      fg_color = "#525252",
      intensity = "Normal",
    },
    new_tab_hover = {
      bg_color = "#c6fff6", -- VHS neon cyan when hovered
      fg_color = "#161616",
      italic = true,
    },
  },
}

-- optional border color
-- Note: WezTerm does not have direct “active_border_color/inactive_border_color” by default in color_scheme,
-- you might set it via window_frame attributes:
config.window_frame = {
  active_titlebar_bg = "#161616",
  inactive_titlebar_bg = "#393939",
  active_titlebar_fg = "#dde1e6",
  inactive_titlebar_fg = "#dde1e6",
  active_titlebar_border_bottom = "#ee5396",
  inactive_titlebar_border_bottom = "#ff7eb6",
}

return config
