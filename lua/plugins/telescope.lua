local telescope = require 'telescope'
local sorters = require 'telescope.sorters'
local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'

telescope.setup {
  defaults = {
    file_ignore_patterns = {'node_modules', '.DS_Store', '.git/'},
    file_sorter = sorters.get_fzy_sorter,
    color_devicons = true,
    preview = {treesitter = true},
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
    file_browser = {
      hidden = true,
      respect_gitignore = true,
      mappings = {
        ['n'] = {
          ['<Space>'] = actions.toggle_selection
        }
      }
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
    },
  },
}

telescope.load_extension 'file_browser'
telescope.load_extension 'fzf'

