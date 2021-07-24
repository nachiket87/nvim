call plug#begin('~/.config/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hoob3rt/lualine.nvim'

  "these are the old ones
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'gruvbox-community/gruvbox'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-telescope/telescope-github.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()
