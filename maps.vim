let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>p :FZF<CR>
nnoremap <leader>rt :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>r :Rg<SPACE>
nnoremap <leader>1 1gt<CR>
nnoremap <leader>2 2gt<CR>
nnoremap <leader>3 3gt<CR>
nnoremap <leader>4 4gt<CR>
nnoremap <leader>5 5gt<CR>
nnoremap <leader>6 6gt<CR>
nnoremap <leader>7 7gt<CR>
nnoremap <leader>8 8gt<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <Leader><CR> :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>gb :Buffers<CR>
nnoremap <leader>- :vertical resize -5<CR>

inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
nmap <leader>gs :G<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>ga :diffget //2<CR>
nmap <leader>gcf :G checkout %<CR>
nmap <leader>gcc :G branch<CR>
nmap <leader>gu :GitGutterUndoHunk<CR>

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

"NerdTree

command W w
command Q q

"copy file path to clipboard

nnoremap <leader>fp :let @* = expand("%")<CR>

"Rspec tests
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>gt :TestVisit<CR>

nnoremap <leader>gw :Dispatch! gh pr view --web<cr>
nnoremap <leader>ghr :Dispatch! gh repo view --web<cr>

