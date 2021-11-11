colorscheme onedark

" Use JSX syntax highlighting for TSX files
autocmd BufRead,BufNewFile *.tsx setlocal syntax=javascript.jsx

let g:indent_blankline_char = "▏"
let g:indent_blankline_filetype_exclude = ["help", "markdown", "text", "terminal", "dashboard", "which_key"]
