vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
  a = {
    description = {'  Search Files'},
    command = vim.fn.TelescopeProjectFiles
  },
  d = {
    description = {'  Open Config '},
    command = vim.fn.OpenConfig
  },
}

vim.cmd([[
function OpenConfig() abort
  cd ~/.config/nvim/
  call TelescopeProjectFiles()
endfunction
]])

vim.g.dashboard_custom_header = {
' ███╗   ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
' ████╗  ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
' ██╔██╗ ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
' ██║╚██╗██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
' ██║ ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
' ╚═╝  ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

vim.g.dashboard_custom_footer = {''}

