vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
  a = {
    description = { '  Search Files' },
    command = 'Telescope find_files'
  },
  d = {
    description = { '  Open Config ' },
    command = vim.fn.OpenConfig
  },
}

vim.cmd [[
function OpenConfig() abort
  cd ~/.config/nvim/
  Telescope git_files
endfunction
]]

vim.g.dashboard_custom_header = {
  ' ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

vim.g.dashboard_custom_footer = { '' }
