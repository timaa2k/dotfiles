local colors = require("seoul256/colors")

local M = {}

M.normal = {
    a = { fg = colors.foreground, bg = colors.extra_yellow, gui = "bold" },
    b = { fg = colors.extra_white, bg = colors.light_magenta },
    c = { fg = colors.light_cyan, bg = colors.extra_white },
    x = { fg = colors.foreground, bg = colors.extra_white },
    y = { fg = colors.foreground, bg = colors.light_white },
    z = { fg = colors.foreground, bg = colors.extra_yellow },
}

M.insert = {
    a = { fg = colors.foreground, bg = colors.light_green, gui = "bold" },
    b = { fg = colors.extra_white, bg = colors.light_magenta },
    c = { fg = colors.light_cyan, bg = colors.extra_white },
    x = { fg = colors.foreground, bg = colors.extra_white },
    y = { fg = colors.foreground, bg = colors.light_white },
    z = { fg = colors.foreground, bg = colors.light_green },
}

M.visual = {
    a = { fg = colors.foreground, bg = colors.light_red, gui = "bold" },
    b = { fg = colors.extra_white, bg = colors.light_magenta },
    c = { fg = colors.light_cyan, bg = colors.extra_white },
    x = { fg = colors.foreground, bg = colors.extra_white },
    y = { fg = colors.foreground, bg = colors.light_white },
    z = { fg = colors.foreground, bg = colors.light_red },
}

M.replace = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    b = { fg = colors.title, bg = colors.active },
}

M.command = {
    a = { fg = colors.foreground, bg = colors.light_magenta, gui = "bold" },
    b = { fg = colors.extra_white, bg = colors.light_magenta },
    c = { fg = colors.light_cyan, bg = colors.extra_white },
    x = { fg = colors.foreground, bg = colors.extra_white },
    y = { fg = colors.foreground, bg = colors.light_white },
    z = { fg = colors.foreground, bg = colors.light_magenta },
}

M.inactive = {
    a = { fg = colors.disabled, bg = colors.bg, gui = "bold" },
    b = { fg = colors.disabled, bg = colors.bg },
    c = { fg = colors.disabled, bg = colors.selection },
}

return M
