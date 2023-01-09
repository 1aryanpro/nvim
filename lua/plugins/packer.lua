-- Automatically install packer if not installed
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

return require 'packer'.startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Misc
  use 'glepnir/dashboard-nvim'
  use 'airblade/vim-gitgutter'
  use 'unblevable/quick-scope'
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'
  use 'folke/which-key.nvim'
  use 'ja-ford/delaytrain.nvim'
  use 'lewis6991/impatient.nvim'
  use 'gpanders/editorconfig.nvim'

  -- Colors
  use 'navarasu/onedark.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Delimiters
  use 'm4xshen/autoclose.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'numToStr/Comment.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- Indentation
  use 'Yggdroot/indentLine'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Telescope Fuzzy Finder
  use { 'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
    } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- FT Plugins
  use 'sheerun/vim-polyglot' -- generic
  use { 'fladson/vim-kitty', ft = 'kitty' }
  use "folke/neodev.nvim"

  -- Language Server Protocol
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'danymat/neogen'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'

end)
