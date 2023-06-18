require('lualine').setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = 'seoul256',
    section_separators = { left = '', right = '' },
    component_separators = '',
    disabled_filetypes = { 'oil' },
  },
  tabline = {
    lualine_a = {
      {
        'mode',
        separator = { left = '', right = '' },
      }
    },
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        path = 1,
        shorting_target = 30,
        symbols = {
          modified = ' ',
          readonly = ' 󰈡',
          unnamed = ' 󰎞',
        }
      }
    },
    lualine_x = {},
    lualine_y = { 'progress' },
    lualine_z = {
      {
        'location',
        separator = { left = '', right = '' },
      }
    }
  },
  sections = {
    lualine_a = {},
    lualine_b = {
      {
        'buffers',
        separator = { left = '', right = '' },
        show_modified_status = false,
        buffers_color = {
          active = 'lualine_b_normal',
          inactive = 'lualine_c_inactive',
        },
      }
    },
    lualine_c = {},
    lualine_x = {
      {
        'branch',
        separator = { left = '', right = '' },
      },
      {
        'diff',
        symbols = {
          added = '+',
          modified = '~',
          removed = '-',
        },
      },
      {
        'diagnostics',
        sources = {
          'nvim_diagnostic'
        }
      }
    },
    lualine_y = {},
    lualine_z = {}
  },
}
