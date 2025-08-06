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
    -- Syntax highlighting
    'pearofducks/ansible-vim',
    'alker0/chezmoi.vim',
    {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup()
      end
    },

    -- Appearance
    --{
    --  'folke/tokyonight.nvim',
    --  lazy = false,
    --  priority = 1000,
    --  config = function()
    --    require('tokyonight').setup {
    --      style = 'night',
    --    }
    --    vim.cmd('colorscheme tokyonight')
    --  end
    --},
    'stevearc/dressing.nvim',
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'kyazdani42/nvim-web-devicons' },
      config = function()
        require('configs._lualine')
      end
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      main = "ibl",
      ---@module "ibl"
      ---@type ibl.config
      opts = {},
      config = function()
        require('ibl').setup()
      end
    },
    -- LSP
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
      'nvim-treesitter/nvim-treesitter',
      branch = 'master',
      lazy = false, 
      build = ':TSUpdate',
      config = function()
        require('configs._treesitter')
      end
    },

    -- Autocompletion

    {
      'folke/trouble.nvim',
      opts = {},
      cmd = 'Trouble',
      config = function()
        require('trouble').setup()
      end
    },
    {
      'windwp/nvim-ts-autotag',
      config = function()
        require('nvim-ts-autotag').setup()
      end
    },

    -- Fuzzy finder
    {
      'ibhagwan/fzf-lua',
      dependencies = { 'kyazdani42/nvim-web-devicons' },
      config = function()
        require('configs._fzf-lua')
      end
    },
    {
      'phaazon/hop.nvim',
      branch = 'v2',
      config = function()
        require('hop').setup()
      end
    },
    {
      'ray-x/sad.nvim',
      dependencies = { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
      config = function()
        require('configs._sad-nvim')
      end
    },

    -- {
    --   'lewis6991/gitsigns.nvim',
    --   config = function()
    --     require('configs._gitsigns')
    --   end
    -- },

    -- Editing support
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
    'taybart/b64.nvim',

    -- Braindead doctor
    {
      'folke/which-key.nvim',
      config = function()
        require('which-key').setup()
      end
    },

    -- Other
    'andweeb/presence.nvim',
  },
-- Configurations
  {
    ui = {
      border = 'none'
    }
  }
)
