local keymap = vim.keymap
local g = vim.g

-- Spacebar is <Leader>
g.mapleader = ","
g.maplocalleader = ","

-- Fast save, save quit, force exit
keymap.set("n", "<Leader>w", ":w!<CR>", { desc = "Write!" })
keymap.set("n", "<Leader>x", ":x<CR>", { desc = "Write and exit" })
keymap.set("n", "<Leader>qq", ":q<CR>", { desc = "Quit" })
keymap.set("n", "<Leader>qa", ":qa!<CR>", { desc = "Quit all!" })
keymap.set("n", "<Leader>wq", ":wq!<CR>", { desc = "Write and quit!" })

-- Better cursor movement on wrapped line
keymap.set("n", "k", "gk")
keymap.set("n", "j", "gj")
keymap.set("v", "k", "gk")
keymap.set("v", "j", "gj")
keymap.set("n", "<Up>", "gk")
keymap.set("n", "<Down>", "gj")
keymap.set("v", "<Up>", "gk")
keymap.set("v", "<Down>", "gj")
keymap.set("i", "<Up>", "<C-o>gk")
keymap.set("i", "<Down>", "<C-o>gj")

-- Y to yank from cursor to end of line
keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

-- Move paragraph
keymap.set("", "K", "{zz", { desc = "Go up a paragraph" })
keymap.set("", "J", "}zz", { desc = "Go down a paragraph" })

-- Move to first and last char
keymap.set("", "H", "^", { desc = "Move cursor to first char" })
keymap.set("", "L", "$", { desc = "Move cursor to last char" })

-- Move selected lines up and down with updated indentation
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Better search movement
keymap.set("n", "n", "nzzzv", { desc = "Go to the next search result and center" })
keymap.set("n", "N", "Nzzzv", { desc = "Go to the previous search result and center" })

-- Move between splits
-- keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to split above" })
-- keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to split below" })
-- keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to left split" })
-- keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to right split" })

-- Open new split
keymap.set("n", "<Leader>s", ":new<CR>", { desc = "Open new horizontal split" })
keymap.set("n", "<Leader>v", ":vnew<CR>", { desc = "Open new vertical split" })

-- Move cursors in Insert mode
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")

-- Tab navigation
keymap.set("n", "<Leader>tn", ":tabnew<CR>", { desc = "Create new tab" })
keymap.set("n", "<Leader>tq", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<Leader>th", ":tabprev<CR>", { desc = "Go to the previous tab" })
keymap.set("n", "<Leader>tl", ":tabnext<CR>", { desc = "Go to the next tab" })
keymap.set("n", "<Leader>te", ':tabedit <C-r>=expand("%:p:h")<CR>/', { desc = "Open new tab with current buffer's path" })

-- Indent or de-indent
keymap.set("n", "<Tab>", ">>", { desc = "Add indentation" })
keymap.set("n", "<S-Tab>", "<<", { desc = "De-indentation" })
keymap.set("v", "<Tab>", ">gv", { desc = "Add indentation" })
keymap.set("v", "<S-Tab>", "<gv", { desc = "De-indentation" })

-- Jumping
keymap.set("n", "<Leader>hh", "<C-o>", { desc = "Jump to older cursor position" })
keymap.set("n", "<Leader>ll", "<C-i>", { desc = "Jump to newer cursor position" })

-- lspconfig
keymap.set("n", "<Leader>lr", ":LspRestart<CR>", { desc = "Restart LSP" })

-- snacks
local terminal = require("snacks.terminal")
keymap.set("n", "<C-b>", terminal.toggle, { desc = "Toggle terminal window" })

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- zellij-nav
local zellij = require("zellij-nav")
keymap.set("n", "<C-j>", zellij.down, { silent = true, desc = "Zellij navigation down" })
keymap.set("n", "<C-k>", zellij.up, { silent = true, desc = "Zellij navigation up" })
keymap.set("n", "<C-h>", zellij.left, { silent = true, desc = "Zellij navigation left" })
keymap.set("n", "<C-l>", zellij.right, { silent = true, desc = "Zellij navigation right" })
keymap.set("t", "<C-j>", zellij.down, { silent = true, desc = "Zellij navigation down" })
keymap.set("t", "<C-k>", zellij.up, { silent = true, desc = "Zellij navigation up" })
keymap.set("t", "<C-h>", zellij.left, { silent = true, desc = "Zellij navigation left" })
keymap.set("t", "<C-l>", zellij.right, { silent = true, desc = "Zellij navigation right" })

-- smart-splits
-- moving between splits
-- keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
-- keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
-- keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
-- keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
keymap.set("n", "<A-h>", require("smart-splits").resize_left)
keymap.set("n", "<A-j>", require("smart-splits").resize_down)
keymap.set("n", "<A-k>", require("smart-splits").resize_up)
keymap.set("n", "<A-l>", require("smart-splits").resize_right)
keymap.set("t", "<A-h>", require("smart-splits").resize_left)
keymap.set("t", "<A-j>", require("smart-splits").resize_down)
keymap.set("t", "<A-k>", require("smart-splits").resize_up)
keymap.set("t", "<A-l>", require("smart-splits").resize_right)
-- swapping buffers between windows
keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
