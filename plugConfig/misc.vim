" Colorscheme setup
let g:onedark_style = 'dark'
colorscheme onedark

augroup customFileTypes
  autocmd!
  autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx
  autocmd BufRead,BufNewFile *.bf setlocal filetype=brainfsck
augroup END

" IndentLine Config
let g:indentLine_char= "▏"
let g:indentLine_fileTypeExclude = ["help", "markdown", "text", "terminal", "dashboard", "which_key"]
let g:indentLine_setConceal = 0

let g:instant_markdown_autostart = 0

" vsnip config
imap <expr> <Tab>   vsnip#jumpable(1)  ? '<Plug>(vsnip-jump-next)' : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)  ? '<Plug>(vsnip-jump-next)' : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'
