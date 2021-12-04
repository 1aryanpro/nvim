let g:gitgutter_map_keys = 0

let g:gitgutter_sign_added              = '┃'
let g:gitgutter_sign_modified           = '┃'
let g:gitgutter_sign_removed            = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_modified_removed   = '┃'

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
