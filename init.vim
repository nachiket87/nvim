set noshowmatch
syntax off
set lazyredraw
set formatoptions-=cro
set ma
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set updatetime=300
set expandtab
set smartindent
set nu
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set noshowmode
set rtp+=/usr/local/opt/fzf
let loaded_matchparen = 1        " Turn off parenthesis match highlighting.

if exists("&termguicolors") && exists("&winblend")
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
endif

" ===== Instead of backing up files, just reload the buffer when it changes. =====
" The buffer is an in-memory representation of a file, it's what you edit
set autoread                         " Auto-reload buffers when file changed on disk
set nobackup                         " Don't use backup files
set nowritebackup                    " Don't backup the file while editing
set noswapfile                       " Don't create swapfiles for new buffers
set updatecount=0                    " Don't try to write swapfiles after some number of updates
set backupskip=/tmp/*,/private/tmp/* " Let me edit crontab files

runtime ./plug.vim
runtime ./maps.vim

"let g:python3_host_prog = '/usr/local/Cellar/python@3.9/3.9.1_6/bin/python3'
" uncommet below and comment above if you can't find python path.
let g:loaded_python_provider = 0
let g:completion_enable_snippet = 'snippets.nvim'

"enables cursor changing below
set guicursor=n-v-c:block,i-ci-ve:ver10,r-cr:hor20,o:hor50

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
hi Normal guibg=NONE ctermbg=NONE

colorscheme gruvbox

lua << EOF
  require('colorizer').setup()
  vim.g.nvim_tree_disable_netrw = 0
EOF

let g:indent_blankline_char = 'x'

let g:neoformat_enable_typescript = ['prettier']
let g:neoformat_enable_ruby = ['rubocop']
let g:neoformat_enable_scss = ['prettier']
let g:neoformat_only_msg_on_error = 1
