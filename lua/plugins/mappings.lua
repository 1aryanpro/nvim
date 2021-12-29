-- Dashboard
nnoremap("<Leader>;", "<cmd>Dashboard<CR>")
nnoremap("<Leader>fh", "<cmd>DashboardFindHistory<CR>")
nnoremap("<Leader>cc", "<cmd>DashboardChangeColorscheme<CR>")
nnoremap("<Leader>fa", "<cmd>DashboardFindWord<CR>")
nnoremap("<Leader>fm", "<cmd>DashboardJumpMark<CR>")

-- Telescope
nnoremap('<leader>fb', '<cmd>lua require "telescope".extensions.file_browser.file_browser()<cr>')
nnoremap('<leader>fu', '<cmd>Telescope buffers<cr>')

function _G.TelescopeFileSearch()
  local theme = ''
  if vim.fn.winwidth(0) < 100 then
    theme = ' theme=dropdown'
  end
   if vim.fn.isdirectory('.git') then
    return ':Telescope git_files' .. theme
  else
    return ':Telescope find_files' .. theme
  end
end
vim.cmd([[
function TelescopeFileSearch() abort
  execute v:lua.TelescopeFileSearch()
endfunction
]])

nnoremap('<leader>ff', '<cmd>call TelescopeFileSearch()<cr>')

-- Goyo
nnoremap('<leader>z', '<cmd>Goyo<cr>')
