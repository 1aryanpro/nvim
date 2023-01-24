-- absolute numbers in INSERT mode
local abIns = augroup('abIns')
autocmd({ 'InsertEnter' }, {
  pattern = '*',
  callback = function()
    vim.opt.relativenumber = false
  end,
  group = abIns
})
autocmd({ 'InsertLeave' }, {
  pattern = '*',
  callback = function()
    vim.opt.relativenumber = true
  end,
  group = abIns
})

-- Split :help vertically
local vertHelp = augroup('vertHelp')
autocmd({ 'FileType' }, {
  pattern = { 'help' },
  callback = function()
    vim.opt_local.bufhidden = 'unload'
    vim.cmd [[wincmd L]]
    vim.cmd [[vert resize 90]]
  end,
  group = vertHelp
})

-- Spellcheck md and txt files
local spellFiles = augroup('spellFiles')
autocmd({ 'FileType' }, {
  pattern = { 'markdown', 'text' },
  callback = function()
    vim.opt_local.spell = true
    vim.opt.linebreak = true -- text wrapping
  end,
  group = spellFiles,
})

-- Set Custom Filetypes
local customFileTypes = augroup('customFileTypes')
local bufChange = { 'BufRead', 'BufNewFile' }

autocmd(bufChange, {
  pattern = '*.tsx',
  callback = function()
    vim.bo.syntax = 'javascript.jsx'
    vim.bo.filetype = 'typescript.typescriptreact'
  end,
  group = customFileTypes,
})

autocmd(bufChange, {
  pattern = 'kitty.conf',
  callback = function() vim.bo.filetype = 'kitty' end,
  group = customFileTypes,
})
