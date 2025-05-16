local wezterm = require("wezterm")

local config = {}

-- Define your font settings
local font_settings = {
  font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true }),
  font_size = 12.0,
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}

return font_settings