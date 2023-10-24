lua << EOF
  require('telescope').setup {
      extensions = {
          fzy_native = {
              override_generic_sorter = true,
              override_file_sorter = true,
          }
      }
  }
  require('telescope').load_extension('fzy_native')
  require('telescope').load_extension('gh')
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
EOF
