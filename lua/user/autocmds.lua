-- Spellcheck md and txt files
vim.cmd [[
  augroup _spellFiles
    au!
    au FileType markdown,text setlocal spell
  augroup end
]]

-- Set Custom Filetypes
vim.cmd [[
  augroup customFileTypes
    autocmd!
    autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx
    autocmd BufRead,BufNewFile *.bf setlocal filetype=brainfsck
  augroup END
]]
