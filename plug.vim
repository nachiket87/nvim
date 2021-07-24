call plug#begin('~/.config/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
  Plug 'honza/vim-snippets'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-telescope/telescope-github.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()
