vim.g.gitgutter_map_keys = 0

vim.g.gitgutter_sign_added              = '▐'
vim.g.gitgutter_sign_modified           = '▐'
vim.g.gitgutter_sign_removed            = '▐'
vim.g.gitgutter_sign_removed_first_line = '▐'
vim.g.gitgutter_sign_modified_removed   = '▐'

vim.cmd [[
function! GitAdded()
  let [a,m,r] = GitGutterGetHunkSummary()
  if a + m + r == 0
    return ''
  endif
  return printf('+%d', a)
endfunction

function! GitEdited()
  let [a,m,r] = GitGutterGetHunkSummary()
  if a + m + r == 0
    return ''
  endif
  return printf('~%d', m)
endfunction

function! GitRemoved()
  let [a,m,r] = GitGutterGetHunkSummary()
  if a + m + r == 0
    return ''
  endif
  return printf('-%d', r)
endfunction
]]

