call plug#begin()

" Color Theme
Plug 'navarasu/onedark.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Dashboard
Plug 'glepnir/dashboard-nvim'

" Utility
Plug 'airblade/vim-gitgutter'
Plug 'unblevable/quick-scope'
Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdcommenter'

" Indentation
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

" Status Line
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Telescope Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ahmedkhalf/project.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Markdown Tools
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Focus Mode
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" FT: html, js, css
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'

Plug 'liuchengxu/vim-which-key'

call plug#end()
