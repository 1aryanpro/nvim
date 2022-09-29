-- Spellcheck md and txt files
local spellFiles = augroup('spellFiles', { clear = true })
autocmd({ 'FileType' }, {
  pattern = { 'markdown', 'text' },
  callback = function()
    vim.opt_local.spell = true
    vim.opt.linebreak = true -- text wrapping
  end,
  group = spellFiles,
})

-- Set Custom Filetypes
local customFileTypes = augroup('customFileTypes', { clear = true })
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
