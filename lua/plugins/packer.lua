-- Automatically install packer if not installed
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Utility
  use 'glepnir/dashboard-nvim'
  use 'airblade/vim-gitgutter'
  use 'unblevable/quick-scope'
  use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
  use 'folke/which-key.nvim'

  -- Colors
  use 'navarasu/onedark.nvim'
  use { 'dracula/vim', as = 'dracula' }
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Delimiters
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'numToStr/Comment.nvim'

  -- Indentation
  use 'Yggdroot/indentLine'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Telescope Fuzzy Finder
  use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make', requires = 'nvim-telescope/telescope.nvim' }
  use {'nvim-telescope/telescope-file-browser.nvim', requires = 'nvim-telescope/telescope.nvim'}

  -- Focus Mode
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'

  -- FT Plugins
  use 'sheerun/vim-polyglot' -- generic
  use {'instant-markdown/vim-instant-markdown', ft = 'markdown', run = 'yarn install'}
  use {'braindead-cc/bf-vim', ft = 'brainfsck'}
  use {'fladson/vim-kitty', ft = 'kitty'}

  -- Language Server Protocol
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Intellisense
  use 'hrsh7th/nvim-cmp'
  use {'hrsh7th/cmp-nvim-lsp', requires = 'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-buffer', requires = 'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-path', requires = 'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-vsnip', requires = 'hrsh7th/nvim-cmp'}

  -- Snippets
  use 'hrsh7th/vim-vsnip'
  use {'rafamadriz/friendly-snippets', requires = 'hrsh7th/vim-vsnip'}
end)
