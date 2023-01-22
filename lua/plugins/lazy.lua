-- Boostraps Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require 'lazy'.setup {
  -- Misc
  'glepnir/dashboard-nvim',
  'airblade/vim-gitgutter',
  'karb94/neoscroll.nvim',
  'kyazdani42/nvim-web-devicons',
  'hoob3rt/lualine.nvim',
  'Isrothy/lualine-diagnostic-message',
  'folke/which-key.nvim',
  'ja-ford/delaytrain.nvim',
  'dstein64/vim-startuptime',
  'gpanders/editorconfig.nvim',

  -- Colors
  'navarasu/onedark.nvim',
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

  -- Delimiters
  'm4xshen/autoclose.nvim',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'numToStr/Comment.nvim',
  'norcalli/nvim-colorizer.lua',

  -- Indentation
  'Yggdroot/indentLine',
  'lukas-reineke/indent-blankline.nvim',

  -- Telescope Fuzzy Finder
  { 'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
    } },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  'nvim-telescope/telescope-file-browser.nvim',

  -- FT Plugins
  'sheerun/vim-polyglot', -- generic
  { 'fladson/vim-kitty', ft = 'kitty' },
  'folke/neodev.nvim',

  -- Language Server Protocol
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'danymat/neogen',
  'mfussenegger/nvim-jdtls',

  -- Snippets
  {"L3MON4D3/LuaSnip", version = "*"},
  'rafamadriz/friendly-snippets',

  -- Autocomplete
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',

}
