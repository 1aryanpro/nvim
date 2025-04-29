-- Misc
vim.opt.mouse = 'a'
vim.opt.scrolloff = 3
vim.opt.spelllang = 'en_us'
vim.opt.completeopt = { 'menuone', 'noselect' }
vim.opt.colorcolumn = '81'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backupcopy = 'yes'

-- Linebreak
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakat = ' \t'

-- characters
vim.opt.listchars = { trail = '·', tab = '┋ ' }
vim.opt.list = true
vim.opt.encoding = 'UTF-8'

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Tabs and Indent
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Prevent Unnecessary Behavior
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showmode = false
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Line Number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
