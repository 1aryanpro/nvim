return {
  -- Misc
  {
    'karb94/neoscroll.nvim',
    config = {},
  },
  {
    'kyazdani42/nvim-web-devicons',
    lazy = false
  },
  {
    'ja-ford/delaytrain.nvim',
    config = {
      grace_period = 2,
      ignore_filetypes = { 'help', 'mason', 'lazy', 'oil' }
    }
  },
  'dstein64/vim-startuptime',
  'gpanders/editorconfig.nvim',
  {
    'j-hui/fidget.nvim',
    config = {}
  },
  {
    'stevearc/oil.nvim',
    config = {
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ['g?'] = 'actions.show_help',
        ['<Esc>'] = 'actions.close',
        ['<CR>'] = 'actions.select',
        ['<BS>'] = 'actions.parent',
      },
      use_default_keymaps = false,
      view_options = {
        show_hidden = true,
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
    run = ':TSUpdate',
  },

  -- Delimiters
  'tpope/vim-surround',
  'tpope/vim-repeat',
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup({
        'css';
        'javascript';
        'vue';
        css = { rgb_fn = true; };
      }, { names = false; })
    end
  },

  -- Indentation
  'lukas-reineke/indent-blankline.nvim',


  -- FT Plugins
  { 'fladson/vim-kitty', ft = 'kitty' },
  'folke/neodev.nvim',

  -- Language Server Protocol
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  {
    'danymat/neogen',
    config = function()
      require 'neogen'.setup { snippet_engine = 'luasnip' }

      nnoremap('<leader>nf', ':Neogen func<CR>')
      nnoremap('<leader>nc', ':Neogen class<CR>')
    end,
    ft = 'lua',
  },
  'tpope/vim-sleuth',
  {
    'mfussenegger/nvim-jdtls',
    ft = 'java'
  },

}
