let g:gitgutter_map_keys = 0

let g:gitgutter_sign_added              = '┃'
let g:gitgutter_sign_modified           = '┃'
let g:gitgutter_sign_removed            = '┃'
let g:gitgutter_sign_removed_first_line = '┃'
let g:gitgutter_sign_modified_removed   = '┃'

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  let t = a+m+r
  if t == 0
    return ''
  endif
  return printf('+%d ~%d -%d =%d', a, m, r, t)
endfunction
