-- Space for leader key
noremap('<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- better searching
nnoremap('<leader>h', ':noh<cr>')

-- copy to clipboard
nnoremap('<leader>yf', ':%y+<cr>')

-- Screen cursor movement
noremap('k', 'gk')
noremap('j', 'gj')
noremap('0', 'g0')
noremap('$', 'g$')

-- ctrl+direction to window movement
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

-- Arrow keys to window movement
nnoremap('<Left>', '<C-w>h')
nnoremap('<Down>', '<C-w>j')
nnoremap('<Up>', '<C-w>k')
nnoremap('<Right>', '<C-w>l')

-- Better Tabbing
vnoremap('>', '>gv')
vnoremap('<', '<gv')

