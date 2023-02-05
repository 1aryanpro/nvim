return { 'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  cmd = 'Telescope',
  config = function()
    local telescope = require 'telescope'
    local sorters = require 'telescope.sorters'

    telescope.setup {
      defaults = {
        file_ignore_patterns = { 'node_modules', '.DS_Store', '.git/' },
        file_sorter = sorters.get_fzy_sorter,
        color_devicons = true,
        preview = { treesitter = true },
      },
      pickers = {
        find_files = {
          hidden = true
        },
        git_files = {
          hidden = true
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
        },
      },
    }
    telescope.load_extension 'fzf'
  end,

  init = function()
    nnoremap('<leader>fb', ':Telescope buffers<CR>')
    nnoremap('<leader>ff', ':Telescope find_files<CR>')
    nnoremap('<Leader>fa', ':Telescope live_grep<CR>')
  end,
}
