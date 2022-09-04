-- Dashboard
nnoremap('<Leader>;', '<cmd>Dashboard<CR>')
nnoremap('<Leader>fh', '<cmd>DashboardFindHistory<CR>')
nnoremap('<Leader>cc', '<cmd>DashboardChangeColorscheme<CR>')
nnoremap('<Leader>fa', '<cmd>DashboardFindWord<CR>')
nnoremap('<Leader>fm', '<cmd>DashboardJumpMark<CR>')

-- Telescope
nnoremap('<leader>fb', '<cmd>lua require \'telescope\'.extensions.file_browser.file_browser()<cr>')
nnoremap('<leader>fu', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>ff', '<cmd>call TelescopeProjectFiles()<cr>')

