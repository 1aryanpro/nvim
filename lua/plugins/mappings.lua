-- Dashboard
nnoremap('<Leader>;', '<cmd>Dashboard<CR>')
nnoremap('<Leader>fm', '<cmd>DashboardJumpMark<CR>')

-- Telescope
nnoremap('<leader>fb', '<cmd>lua require \'telescope\'.extensions.file_browser.file_browser()<cr>')
nnoremap('<leader>fu', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>ff', '<cmd>Telescope find_files<cr>')
nnoremap('<leader>fg', '<cmd>Telescope git_files<cr>')
nnoremap('<Leader>fa', '<cmd>Telescope live_grep<CR>')

