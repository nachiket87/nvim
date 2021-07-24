lua << EOF
  local saga = require 'lspsaga'

  saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_style = "round",
  }
EOF
nnoremap <silent><leader>K :Lspsaga hover_doc<CR>
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
