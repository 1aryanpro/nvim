vim.cmd [[
  augroup _spellFile
    au!
    au FileType markdown,text setlocal spell
  augroup end
]]
