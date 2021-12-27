local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local function nnoremap(from, to)
  keymap("n", from, to, opts)
end

-- Dashboard
nnoremap("<Leader>;", "<cmd>Dashboard<CR>")
nnoremap("<Leader>fh", "<cmd>DashboardFindHistory<CR>")
nnoremap("<Leader>cc", "<cmd>DashboardChangeColorscheme<CR>")
nnoremap("<Leader>fa", "<cmd>DashboardFindWord<CR>")
nnoremap("<Leader>fm", "<cmd>DashboardJumpMark<CR>")

-- Telescope
nnoremap('<leader>fb', '<cmd>lua require \'telescope\'.extensions.file_browser.file_browser()<CR>')
nnoremap('<leader>fu', '<cmd>Telescope buffers<cr>')
nnoremap('<leader>fp', '<cmd>Telescope projects<cr>')
nnoremap('<leader>ff', '<cmd>TelescopeFileSearch<cr>')
nnoremap('<leader><Space>', '<cmd>TelescopeFileSearch<cr>')

-- Goyo
nnoremap('<leader>z', '<cmd>Goyo<cr>')
