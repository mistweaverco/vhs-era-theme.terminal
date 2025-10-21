<div align="center">

![VHS Era Logo](assets/logo.svg)

# vhs-era-theme.terminal

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/mistweaverco/vhs-era-theme.kitty?style=for-the-badge)](https://github.com/mistweaverco/vhs-era-theme.kitty/releases/latest)

[Install](#install)

<p></p>

The VHS era,
which spanned roughly from the late 1970s to the early 2000s,
was a time when people could rent movies,
record TV shows,
and watch home videos at home using bulky magnetic tape cassettes.

This experience was defined by the ritual of trips to
video rental stores like Blockbuster,
the anticipation of recording favorite programs,
and the physical nature of tapes that had to
be rewound and could degrade over time.

<p></p>

</div>

## Install

### WezTerm

Clone the repository to your local machine:

```sh
git clone https://github.com/mistweaverco/vhs-era-theme.kitty.git ~/.config/wezterm/themes/vhs-era
```

Then, add the following line to your `wezterm.lua` configuration file:

```lua
require("themes.vhs-era-theme")

local vhs_era_theme = require 'themes.vhs-era.wezterm.lua'
config.colors = vhs_era.colors
config.color_scheme = "vhs-era"
```

### Kitty

Copy the `vhs-era-theme.kitty.conf` file to your
`~/.config/kitty/themes/` directory
and import it directly in your `kitty.conf` file with:

```sh
include ~/.config/kitty/themes/vhs-era-theme.kitty.conf
```
