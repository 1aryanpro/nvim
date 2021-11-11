nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_use_floating_win = 0

let g:which_key_map = {
	\ 'name': 'Leader',
	\ 'h': 'Window Move Left',
	\ 'j': 'Window Move Down',
	\ 'k': 'Window Move Up',
	\ 'l': 'Window Move Right',
	\ 'p': 'Format File Prettier',
	\ 'a': 'Coc CodeAction',
	\ 'z': 'Goyo Zen Mode',
	\ 'R': 'Rename Symbol',
	\ 't': 'Open Integrated Terminal',
	\ ';': 'Open Dashboard',
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

let g:which_key_map.w = {
	\ 'name': '+VimWiki',
	\ 'i': 'Open Diaries Dir',
	\ 't': 'Open Index in Tab',
	\ 'w': 'Open VimWiki Index',
	\ 's': 'Open with UI',
	\ 'SPC': {
		\ 'name': '+DiaryActions'
	  \ },
	\ }

let g:which_key_map.c = {
		\ 'name': '+ColorSchemes',
		\ 'c': 'Change Color Scheme',
		\ 'i': 'Toggle OneDark'
	  \ }

let g:which_key_map.n = {
		\ 'name': '+New',
		\ 'f': 'New File'
	  \ }

call which_key#register('<Space>', 'g:which_key_map')
