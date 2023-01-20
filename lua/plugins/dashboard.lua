local db = require 'dashboard'

db.custom_center = {
  -- {icon = '  ', desc = 'Search Files', action = 'Telescope find_files'},
  -- {icon = '  ', desc = 'Open Config ', action = vim.fn.OpenConfig}
  { desc = "Time to code!!" }
}

vim.cmd [[
function OpenConfig() abort
  cd ~/.config/nvim/
  Telescope git_files
endfunction
]]

db.custom_header = {
  ' ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

db.custom_footer = { '' }
