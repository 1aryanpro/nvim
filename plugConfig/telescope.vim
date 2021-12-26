function TelescopeFileSearch() abort
  if isdirectory(".git")
    execute "Telescope git_files"
  else
    execute "Telescope find_files"
  endif
endfunction

command! -nargs=0 TelescopeFileSearch :call TelescopeFileSearch()

nnoremap <leader>fb <cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>
nnoremap <leader>fu <cmd>Telescope buffers<cr>
nnoremap <leader>fp <cmd>Telescope projects<cr>

nnoremap <leader>ff <cmd>TelescopeFileSearch<cr>
nnoremap <leader><Space> <cmd>TelescopeFileSearch<cr>
