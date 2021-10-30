call plug#begin('~/.config/plugged')
  Plug 'neovim/nvim-lspconfig'
  "Plug 'nvim-lua/completion-nvim'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'norcalli/snippets.nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'glepnir/zephyr-nvim'
  Plug 'sbdchd/neoformat'
  Plug 'andymass/vim-matchup'
  Plug 'sainnhe/gruvbox-material'

  "these are the old ones
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'gruvbox-community/gruvbox'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'tpope/vim-rhubarb'
  Plug 'nvim-telescope/telescope-github.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdtree'
  Plug 'altercation/vim-colors-solarized'
call plug#end()
