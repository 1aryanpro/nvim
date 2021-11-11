let g:dashboard_default_executive = 'telescope'

nmap <Leader>ss <cmd>SessionSave<CR>
nmap <Leader>sl <cmd>SessionLoad<CR>

nnoremap <Leader>; <cmd>Dashboard<CR>

nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>cc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fm :DashboardJumpMark<CR>
nnoremap <silent> <Leader>nf :DashboardNewFile<CR>

let g:dashboard_custom_section={
  \ 'last_session': {
      \ 'description': ['  Open Previous Session     SPC s l'],
      \ 'command': 'SessionLoad'
			\ },
	\ 'find_file': {
			\ 'description': ['  Search Files              SPC f f'],
			\ 'command': 'call TelescopeFileSearch()'
	  	\ },
	\ 'find_history': {
			\ 'description': ['ﭯ  Search History            SPC f h'],
			\ 'command': 'DashboardFindHistory'
	  	\ },
	\ 'open_projects': {
			\ 'description': ['  Open Recent Project       SPC f p'],
			\ 'command': 'Telescope projects'
		  \ },
  \ }

let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ }

let g:dashboard_custom_header = [
	\ "██╗  ██╗███████╗██╗     ██╗      ██████╗         █████╗ ██████╗ ██╗   ██╗ █████╗ ███╗   ██╗", 
	\ "██║  ██║██╔════╝██║     ██║     ██╔═══██╗       ██╔══██╗██╔══██╗╚██╗ ██╔╝██╔══██╗████╗  ██║",
	\ "███████║█████╗  ██║     ██║     ██║   ██║       ███████║██████╔╝ ╚████╔╝ ███████║██╔██╗ ██║",
	\ "██╔══██║██╔══╝  ██║     ██║     ██║   ██║       ██╔══██║██╔══██╗  ╚██╔╝  ██╔══██║██║╚██╗██║",
	\ "██║  ██║███████╗███████╗███████╗╚██████╔╝▄█╗    ██║  ██║██║  ██║   ██║   ██║  ██║██║ ╚████║",
	\ "╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═╝    ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝"
	\ ]


