local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local function nnoremap(from, to)
  keymap("n", from, to, opts)
end

vim.g.dashboard_default_executive = 'telescope'

nnoremap("<Leader>;", "<cmd>Dashboard<CR>")

nnoremap("<Leader>fh", "<cmd>DashboardFindHistory<CR>")
nnoremap("<Leader>cc", "<cmd>DashboardChangeColorscheme<CR>")
nnoremap("<Leader>fa", "<cmd>DashboardFindWord<CR>")
nnoremap("<Leader>fm", "<cmd>DashboardJumpMark<CR>")

vim.g.dashboard_custom_section = {
  a = {
    description = {'  Search Files'},
    command = 'call TelescopeFileSearch()'
  },
  d = {
    description = {'  Open Config '},
    command = 'call OpenConfig()'
  },
}

vim.cmd([[
function OpenConfig() abort
  cd $NVIMCONFIG
  call TelescopeFileSearch()
endfunction
]])

vim.g.dashboard_custom_header = {
' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

vim.g.dashboard_custom_footer = {''}

