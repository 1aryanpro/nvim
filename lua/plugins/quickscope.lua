-- Only show highlights for these commands
vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }

vim.cmd([[
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#61afef' gui=underline,bold
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#e86671' gui=underline,bold
augroup END
]])
