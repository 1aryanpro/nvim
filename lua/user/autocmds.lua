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
    autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx filetype=typescript.typescriptreact
    autocmd BufRead,BufNewFile *.bf setlocal filetype=brainfsck
    autocmd BufRead,BufNewFile kitty.conf setlocal filetype=kitty
  augroup END
]]
