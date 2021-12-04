" set leader key
let g:mapleader = "\<Space>"

" better searching
nnoremap <leader>h :noh<cr>

" copy whole buffer to clipboard
nnoremap <leader>yf :normal! mmggVG"+y`m<cr>
nnoremap <leader>yy :normal! mmV"+y`m<cr>

" switch ^ and 0
nnoremap 0 ^
nnoremap ^ 0

" ctrl+direction to window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Arrow keys to window movement
nnoremap <Left>  <C-W>h
nnoremap <Down>  <C-W>j
nnoremap <Up>    <C-W>k
nnoremap <Right> <C-W>l

" Screen cursor movement
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Better Tabbing
vnoremap < <gv
vnoremap > >gv

" Terminal Mappings
nnoremap <leader>t <C-w>s<C-w>j<cmd>terminal<cr><C-w>L<cmd>vert res 60<cr>
tnoremap <Esc> <C-\><C-n>
