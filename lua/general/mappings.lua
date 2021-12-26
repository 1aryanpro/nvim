local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local function noremap(from, to)
  keymap("", from, to, opts)
end

local function nnoremap(from, to)
  keymap("n", from, to, opts)
end

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

nnoremap('<leader>h', '<cmd>noh<cr>') -- better searching
nnoremap('<leader>s', '<cmd>source $NVIMCONFIG/init.vim<cr>') -- auto source

-- copy to clipboard
nnoremap('<leader>yf', '<cmd>%y+<cr>')
nnoremap('<leader>yy', '<cmd>normal! "+yy')

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
keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)

-- Terminal Mappings
nnoremap("<leader>t", "<C-w>s<C-w>j<cmd>terminal<cr><C-w>L<cmd>vert res 60")
keymap('t', '<Esc>', '<C-\\><C-n>', opts)
