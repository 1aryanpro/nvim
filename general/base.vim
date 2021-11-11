let mapleader = "\<Space>"
let maplocallleader = "\\"
nnoremap <Space> <NOP>

syntax on

set noshowmode

set timeoutlen=500

set splitbelow
set splitright

set concealcursor=""

set hidden

set visualbell

set nocompatible

" Tabs and Indentation
set noexpandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set list
set listchars=tab:▏\ ,trail:·
autocmd FileType help,md,text,which_key,dashboard set nolist

set smartcase

set noswapfile
set nobackup
set nowritebackup

" Text Wrapping
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

" Line Number Specifications
set number
set relativenumber
set signcolumn=auto
