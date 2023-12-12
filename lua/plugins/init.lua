return {
  -- Misc
  { 'karb94/neoscroll.nvim',        config = {} },
  { 'kyazdani42/nvim-web-devicons', lazy = false },
  {
    'ja-ford/delaytrain.nvim',
    config = {
      grace_period = 2,
      ignore_filetypes = { 'help', 'mason', 'lazy', 'oil', 'markdown', 'text' }
    }
  },
  { 'dstein64/vim-startuptime', cmd = 'StartupTime' },
  { 'j-hui/fidget.nvim',        config = {} },
  {
    'stevearc/oil.nvim',
    cmd = 'Oil',
    config = {
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<CR>'] = 'actions.select',
        ['<BS>'] = 'actions.parent',
        ['-'] = 'actions.open_cwd',
        ['q'] = 'actions.close',
      },
      use_default_keymaps = false,
      view_options = {
        show_hidden = true,
      },
      float = {
        win_options = {
          winblend = 0,
        },
      }
    },
    init = function()
      nnoremap('<Leader>fo', ':Oil --float<cr>')
    end,
  },

  -- Colors
  {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme onedark]]
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    config = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
      },
    },
    run = ':TSUpdate',
  },

  -- Delimiters
  'tpope/vim-surround',
  'tpope/vim-repeat',
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup({
        '*'
      }, { names = false })
    end
  },

  -- Indentation
  'lukas-reineke/indent-blankline.nvim',

  -- FT Plugins
  { 'fladson/vim-kitty',        ft = 'kitty' },
  { 'folke/neodev.nvim',        ft = 'lua' },
  { 'Glench/Vim-Jinja2-Syntax', ft = 'jinja' },
  { 'stephenway/postcss.vim',   ft = 'css' },

  -- Language Server Protocol
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  {
    'danymat/neogen',
    config = { snippet_engine = 'luasnip' },
    init = function()
      nnoremap('<leader>nf', ':Neogen func<CR>')
      nnoremap('<leader>nc', ':Neogen class<CR>')
    end,
  },
  'tpope/vim-sleuth',
  {
    'mfussenegger/nvim-jdtls',
    ft = 'java',
    config = function()
      require('jdtls').start_or_attach({
        cmd = { '/opt/homebrew/bin/jdtls' },
        root_dir = vim.fs.dirname(vim.fs.find({ '.gradlew', '.git', 'mvnw' }, { upward = true })[1]),
      })
    end,
  },

}
