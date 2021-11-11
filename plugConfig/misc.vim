colorscheme onedark
let g:onedark_toggle_style_keymap = '<nop>'

" Use JSX syntax highlighting for TSX files
autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx

let g:indentLine_char= "▏"
let g:indentLine_fileTypeExclude = ["help", "markdown", "text", "terminal", "dashboard", "which_key"]
let g:indentLine_setConceal = 0

let g:instant_markdown_autostart = 0
