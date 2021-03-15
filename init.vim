set noshowmatch
syntax on
set formatoptions-=cro
set notermguicolors
set ma
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set updatetime=4000
set expandtab
set smartindent
set nu
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
let loaded_matchparen = 1        " Turn off parenthesis match highlighting.

call plug#begin('~/.config/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-github.nvim'


Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'sbdchd/neoformat'
Plug 'lukas-reineke/format.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
call plug#end()

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>p :FZF<CR>
nnoremap <leader>rt :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>r :Rg<SPACE>
nnoremap <leader>1 1gt<CR>
nnoremap <leader>2 2gt<CR>
nnoremap <leader>3 3gt<CR>
nnoremap <leader>4 4gt<CR>
nnoremap <leader>5 5gt<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <Leader><CR> :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>gb :Buffers<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
nnoremap <leader>- :vertical resize -5<CR>

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

"let g:python3_host_prog = '/usr/local/Cellar/python@3.9/3.9.1_6/bin/python3'
" uncommnet below and comment above if you can't find python path.
let g:loaded_python_provider = 0

let g:airline_powerline_fonts = 1

"enables cursor changing below
set guicursor=n-v-c:block,i-ci-ve:ver10,r-cr:hor20,o:hor50

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
hi Normal guibg=NONE ctermbg=NONE

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
nmap <leader>gs :G<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>ga :diffget //2<CR>

highlight Normal ctermbg=none
highlight NonText ctermbg=none

colorscheme gruvbox

augroup filetype_jsx
    autocmd!
    autocmd FileType jsx set filetype=javascript
augroup END

syntax enable

filetype plugin indent on

" telescope to see the sun
  
nnoremap <leader>ff <cmd>Telescope find_files<cr> 
nnoremap <leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fe :lua vim.lsp.buf.code_action() <CR>

" map :W to w and :Q to q
command W w
command Q q

  "" language servers
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact','substring','fuzzy']
let g:completion_enable_auto_popup = 1

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

augroup Format
    autocmd!
    autocmd BufWritePost * FormatWrite
augroup END

lua require('nachiket-custom-lsp')
lua require('nachiket-telescope')
lua require('nachiket-formatter')
lua require('nachiket-compeconfig')
