-- Dashboard
nnoremap('<Leader>;', ':Dashboard<CR>')
nnoremap('<Leader>fm', ':DashboardJumpMark<CR>')

-- Telescope
nnoremap('<leader>fb', ':lua require \'telescope\'.extensions.file_browser.file_browser()<CR>')
nnoremap('<leader>fu', ':Telescope buffers<CR>')
nnoremap('<leader>ff', ':Telescope find_files<CR>')
nnoremap('<leader>fg', ':Telescope git_files<CR>')
nnoremap('<Leader>fa', ':Telescope live_grep<CR>')

-- Neogen
nnoremap('<leader>nf', ':Neogen func<CR>')
nnoremap('<leader>nc', ':Neogen class<CR>')
