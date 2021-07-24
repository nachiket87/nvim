let mapleader = " "
nnoremap <leader>q :q<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


























nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

command W w
command Q q
