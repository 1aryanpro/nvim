local telescope = require('telescope')
local sorters = require('telescope.sorters')
local actions = require('telescope.actions')

require("project_nvim").setup {}

telescope.setup {
  defaults = {
    file_ignore_patterns = {"node_modules"},
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
  },
}

telescope.load_extension('projects')
telescope.load_extension('file_browser')

vim.cmd([[
function TelescopeFileSearch() abort
  if isdirectory(".git")
    execute "Telescope git_files"
  else
    execute "Telescope find_files"
  endif
endfunction

command! -nargs=0 TelescopeFileSearch :call TelescopeFileSearch()
]])

