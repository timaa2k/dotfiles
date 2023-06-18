local M = {}
local colors = require("seoul256/colors")

function M.setup()
    vim.g.background = colors.background
    vim.g.foreground = colors.foreground
    vim.g.terminal_color_0 = colors.dark_black
    vim.g.terminal_color_1 = colors.dark_red
    vim.g.terminal_color_2 = colors.dark_green
    vim.g.terminal_color_3 = colors.dark_yellow
    vim.g.terminal_color_4 = colors.dark_blue
    vim.g.terminal_color_5 = colors.dark_magenta
    vim.g.terminal_color_6 = colors.dark_cyan
    vim.g.terminal_color_7 = colors.dark_white
    vim.g.terminal_color_8 = colors.light_black
    vim.g.terminal_color_9 = colors.light_red
    vim.g.terminal_color_10 = colors.light_green
    vim.g.terminal_color_11 = colors.light_yellow
    vim.g.terminal_color_12 = colors.light_blue
    vim.g.terminal_color_13 = colors.light_magenta
    vim.g.terminal_color_14 = colors.light_cyan
    vim.g.terminal_color_15 = colors.light_white
end

return M
