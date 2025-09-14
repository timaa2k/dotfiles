local fn = vim.fn

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd [[
  highlight IblIndent guifg=#cccccc gui=nocombine
  highlight IblWhitespace guifg=#FFFFFF gui=nocombine
]]

local lazy = require('lazy')

lazy.setup(
-- Plugins
  {
    {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      opts = {
        bigfile = { enabled = true },
        quickfile = { enabled = true }
      }
    },

    {
      'nvim-treesitter/nvim-treesitter',
      branch = 'master',
      lazy = false, 
      build = ':TSUpdate',
      config = function()
        require('configs._treesitter')
      end
    },

    {
      'neovim/nvim-lspconfig',
      dependencies = {
        'b0o/schemastore.nvim',
        'ray-x/lsp_signature.nvim',
        'lewis6991/gitsigns.nvim',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig',
        'nvim-lua/plenary.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
      },
      config = function()
        require('configs._lspconfig')
      end
    },

    {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('telescope.pickers.layout_strategies').custom_bottom_pane = function(picker, max_columns, max_lines, layout_config)
          local layout = require('telescope.pickers.layout_strategies').bottom_pane(picker, max_columns, max_lines, layout_config)
          layout.prompt.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }
          layout.results.borderchars = { '─', '│', '─', '│', '├', '┤', '┘', '└' }
          layout.preview.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' }
          return layout
        end
        require('telescope').setup({
          defaults = {
            layout_strategy = "custom_bottom_pane",
            layout_config = {
              prompt_position = "top",
            },
            sorting_strategy = "ascending",
            path_display = {
              "filename_first",
            }
          },
        })
        end
    },

    {
      'mrjones2014/smart-splits.nvim',
      config = function()
        require('smart-splits').setup({
          at_edge = 'stop',
        })
      end
    },

    {
      'swaits/zellij-nav.nvim',
      lazy = true,
      event = "VeryLazy",
    },

    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'kyazdani42/nvim-web-devicons' },
      config = function()
        require('configs._lualine')
      end
    },

    {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup()
      end
    },

    {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    },

    {
      'windwp/nvim-autopairs',
      config = function()
        require('configs._autopairs')
      end
    },

    {
      'kylechui/nvim-surround',
      config = function()
        require('nvim-surround').setup()
      end
    },

    {
      'folke/which-key.nvim',
      config = function()
        require('which-key').setup()
      end
    },
  },
-- Configurations
  {
    ui = {
      border = 'none'
    }
  }
)
