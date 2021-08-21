let mapleader = " "

" Buffer Navigation
nnoremap <leader>q :q<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>1 1gt<CR>
nnoremap <leader>2 2gt<CR>
nnoremap <leader>3 3gt<CR>
nnoremap <leader>4 4gt<CR>
nnoremap <leader>5 5gt<CR>
nnoremap <leader>6 6gt<CR>
nnoremap <leader>7 7gt<CR>
nnoremap <leader>8 8gt<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>+ :vertical resize +5<CR>

" Git Fugitive 

nmap <leader>gs :G<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>ga :diffget //2<CR>
nmap <leader>gcf :G checkout %<CR>
nmap <leader>gcc :G branch<CR>

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>p :lua require('telescope.builtin').find_files({ no_ignore = 'hidden'})<cr>
nnoremap <leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

command W w
command Q q


"Custom

"'nachiket'
"count the number of times the current word appears in current buffer
nnoremap <leader>fd :call Check_Double()<cr>

function! Check_Double()
  normal! yi'
  execute '/'.getreg('"')
endfunction


"'nachiket'"

" neoformat on save
autocmd BufWritePost * Neoformat 
