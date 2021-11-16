nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_use_floating_win = 0

let g:which_key_map = {
  \ 'name': 'Leader',
  \ 'a': 'CodeAction',
  \ 'h': 'Remove Highlight',
  \ 'r': 'Rename Symbol',
  \ 't': 'Open Integrated Terminal',
  \ 'z': 'Goyo Zen Mode',
  \ ';': 'Open Dashboard',
  \ '/': 'Comment Line(s)',
  \ }

let g:which_key_map.f = {
  \ 'name': '+Telescope',
  \ 'f': 'Search Files',
  \ 'b': 'File Browser',
  \ 'h': 'Search History',
  \ 'm': 'Jump to Mark',
  \ 'a': 'Grep Search',
  \ 'p': 'Recent Projects',
  \ }

let g:which_key_map.s = {
  \ 'name': '+Session',
  \ 's': 'Session Save',
  \ 'l': 'Session Load',
  \ }

let g:which_key_map.c = {
    \ 'name': '+ColorSchemes',
    \ 'c': 'Change Color Scheme',
    \ }

let g:which_key_map.n = {
    \ 'name': '+New',
    \ 'f': 'New File'
    \ }

call which_key#register('<Space>', 'g:which_key_map')
