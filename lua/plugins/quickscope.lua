-- Trigger a highlight in the appropriate direction when pressing these keys:
vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }

vim.cmd([[
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#61afef' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#e86671' gui=underline ctermfg=81 cterm=underline
augroup END
]])
