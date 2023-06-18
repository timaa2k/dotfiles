local colors = {
    background      = "#e1e1e1",
    foreground      = "#5c5c5c",

    dark_black      = "#404040",
    dark_red        = "#a05454",
    dark_green      = "#4fa23b",
    dark_yellow     = "#7e9904",
    dark_blue       = "#5f819d",
    dark_magenta    = "#71577a",
    dark_cyan       = "#55807b",
    dark_white      = "#bcbcbc",

    light_black     = "#8f8f8f",
    light_red       = "#cc6666",
    light_green     = "#b5bd90",
    light_yellow    = "#d8af5f",
    light_blue      = "#81a2be",
    light_magenta   = "#2eb5c1",
    light_cyan      = "#8abeb7",
    light_white     = "#cccccc",

    extra_white     = "#d9d9d9",

    none = "NONE",
}
-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.seoul256_contrast == false then
    colors.sidebar = colors.bg
    colors.float = colors.bg
else
    colors.sidebar = colors.bg_alt
    colors.float = colors.bg_alt
end

return colors
