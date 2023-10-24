call plug#begin('~/.config/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocUpdate'}
  Plug 'gruvbox-community/gruvbox'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'honza/vim-snippets'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-telescope/telescope-github.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'andymass/vim-matchup'
  Plug 'vim-test/vim-test'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-repeat'
call plug#end()
