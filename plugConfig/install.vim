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
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Focus Mode
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" FT: html, js, css
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" FT: python
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-python/python-syntax'

" Language Server Protocol
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'liuchengxu/vim-which-key'

call plug#end()
