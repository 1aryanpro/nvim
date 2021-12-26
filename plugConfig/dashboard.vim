let g:dashboard_default_executive = 'telescope'

nnoremap <Leader>; <cmd>Dashboard<CR>

nnoremap <silent> <Leader>fh <cmd>DashboardFindHistory<CR>
nnoremap <silent> <Leader>cc <cmd>DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa <cmd>DashboardFindWord<CR>
nnoremap <silent> <Leader>fm <cmd>DashboardJumpMark<CR>

let g:dashboard_custom_section={
\ 'a': {
  \ 'description': ['  Search Files'],
  \ 'command': 'call TelescopeFileSearch()'
  \ },
\ 'd': {
  \ 'description': ['  Open Config '],
  \ 'command': 'call OpenConfig()'
  \ },
\ }

function OpenConfig() abort
  cd $NVIMCONFIG
  call TelescopeFileSearch()
endfunction

let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]
