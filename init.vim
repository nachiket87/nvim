let g:loaded_netrwPlugin = 1
let g:loaded_netrw= 1
set noshowmatch
syntax enable
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
  syntax enable
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

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-prettier'] 

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument "prettier.formatFile
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
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

colorscheme gruvbox

augroup filetype_jsx
    autocmd!
    autocmd FileType jsx set filetype=javascript
augroup END


filetype plugin indent on

let g:loaded_perl_provider = 0

command! -nargs=1 Browse silent execute '!open' shellescape(<q-args>,1)
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

