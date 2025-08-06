require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'comment',
    'dockerfile',
    'go',
    'html',
    'json',
    'lua',
    'python',
    'regex',
    'vim',
    'yaml'
  },
  sync_install = true,
  highlight = {
    enable = true
  },
  autotag = {
    enable = true,
  }
}
