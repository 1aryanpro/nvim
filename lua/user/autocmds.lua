-- Format file on save
-- local autoFormat = augroup('autoFormat')
-- autocmd({ 'BufWritePre' }, {
--   pattern = { '*' },
--   callback = function()
--     vim.lsp.buf.format()
--   end,
--   group = autoFormat
-- })


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
