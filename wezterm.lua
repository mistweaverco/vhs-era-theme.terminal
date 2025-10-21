-- vhs-era theme for WezTerm
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
  color_scheme = "vhs-era",
  colors = {
    foreground = "#dde1e6",
    background = "#161616",
    cursor_bg = "#f2f4f8",
    cursor_fg = "#393939",
    cursor_border = "#f2f4f8",
    selection_fg = "#f2f4f8",
    selection_bg = "#525252",
    -- URL color (WezTerm uses `ansi` or `hyperlink` styles; we’ll map it via “ansi” bold maybe)
    ansi = {
      "#262626", -- black  (color0)
      "#ff7eb6", -- red    (color1)
      "#42be65", -- green  (color2)
      "#82cfff", -- yellow (color3)  note: kitty had separate color3 vs color11
      "#33b1ff", -- blue   (color4)
      "#ee5396", -- magenta(color5)
      "#3ddbd9", -- cyan   (color6)
      "#dde1e6", -- white  (color7)
    },
    brights = {
      "#393939", -- bright black (color8)
      "#ff7eb6", -- bright red   (color9)
      "#42be65", -- bright green (color10)
      "#82cfff", -- bright yellow(color11)
      "#33b1ff", -- bright blue  (color12)
      "#ee5396", -- bright magenta(color13)
      "#3ddbd9", -- bright cyan  (color14)
      "#ffffff", -- bright white (color15)
    },
    -- additional optional: hyperlink style
    hyperlink = {
      -- WezTerm uses `ansi` for normal text; hyperlink_fg only for links
      active_fg = "#ee5396",
      inactive_fg = "#ff7eb6",
    },
    -- optional border color
    -- Note: WezTerm does not have direct “active_border_color/inactive_border_color” by default in color_scheme,
    -- you might set it via window_frame attributes:
    window_frame = {
      active_titlebar_bg = "#161616",
      inactive_titlebar_bg = "#393939",
      active_titlebar_fg = "#dde1e6",
      inactive_titlebar_fg = "#dde1e6",
      active_titlebar_border_bottom = "#ee5396",
      inactive_titlebar_border_bottom = "#ff7eb6",
    },
  },
}

return config
