let g:onedark_style = 'dark'
colorscheme onedark
let g:onedark_toggle_style_keymap = '<nop>'

" Use JSX syntax highlighting for TSX files
autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx

" Add BrainF filetype
autocmd BufRead,BufNewFile *.bf setlocal filetype=brainfsck

" IndentLine Config
let g:indentLine_char= "▏"
let g:indentLine_fileTypeExclude = ["help", "markdown", "text", "terminal", "dashboard", "which_key"]
let g:indentLine_setConceal = 0

let g:instant_markdown_autostart = 0

let g:python_highlight_all = 1

" vsnip config
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
