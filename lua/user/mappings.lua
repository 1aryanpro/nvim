noremap("<Space>", "<Nop>") -- Space for leader key
vim.g.mapleader = " "

nnoremap('<leader>h', '<cmd>noh<cr>') -- better searching

-- copy to clipboard
nnoremap('<leader>yf', '<cmd>%y+<cr>')
nnoremap('<leader>yy', '<cmd>normal! "+yy<cr>')

-- ctrl+direction to window movement
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

-- Arrow keys to window movement
nnoremap('<Left>',  '<C-w>h')
nnoremap('<Down>',  '<C-w>j')
nnoremap('<Up>',    '<C-w>k')
nnoremap('<Right>', '<C-w>l')

-- Screen cursor movement
noremap('k', 'gk')
noremap('j', 'gj')
noremap('0', 'g0')
noremap('$', 'g$')

-- Better Tabbing
vnoremap("<Tab>", ">gv")
vnoremap("<S-Tab>", "<gv")
