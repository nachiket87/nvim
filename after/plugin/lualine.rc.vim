lua << EOF
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'gruvbox',
      section_separators = {'', ''},
      component_separators = {'', ''},
      disabled_filetypes = {}
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {
        { 'diagnostics', sources = {'nvim_diagnostic'}, symbols = {error = ' ', warn = ' ', info = ' '} },
        'encoding',
        'filetype'
      },
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {'fugitive'}
    }
EOF
