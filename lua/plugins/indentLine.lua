return {
  'Yggdroot/indentLine',
  init = function()
    vim.g.indentLine_char = '┋' --╏┊┆┋┇
    vim.g.indentLine_fileTypeExclude = { 'help', 'markdown', 'text', 'terminal', 'dashboard' }
    vim.g.indentLine_setConceal = 0
  end,
}
