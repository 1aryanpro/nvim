return {
    -- Misc
    { 'karb94/neoscroll.nvim',        opts = {} },
    { 'kyazdani42/nvim-web-devicons', lazy = false },
    {
        'ja-ford/delaytrain.nvim',
        opts = {
            grace_period = 2,
            ignore_filetypes = { 'help', 'mason', 'lazy', 'oil', 'markdown', 'text' }
        }
    },
    {
        'folke/zen-mode.nvim',
        opts = {
            window = {
                width = 80,
                height = 0.8,
            }
        }
    },
    { 'dstein64/vim-startuptime', cmd = 'StartupTime' },
    {
        'stevearc/oil.nvim',
        cmd = 'Oil',
        opts = {
            skip_confirm_for_simple_edits = true,
            keymaps = {
                ['g?'] = 'actions.show_help',
                ['<CR>'] = 'actions.select',
                ['<BS>'] = 'actions.parent',
                ['-'] = 'actions.open_cwd',
                ['q'] = 'actions.close',
            },
            use_default_keymaps = false,
            view_options = {
                show_hidden = true,
            },
            float = {
                win_options = {
                    winblend = 0,
                },
            }
        },
        init = function()
            nnoremap('<Leader>fo', ':Oil --float<cr>')
        end,
    },

    -- Colors
    {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd [[colorscheme onedark]]
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            local opts = {
                indent = { enable = true },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                }
            }
            require('nvim-treesitter.configs').setup(opts)
        end,
        run = ':TSUpdate',
    },

    -- Delimiters
    'tpope/vim-surround',
    'tpope/vim-repeat',
    {
        'norcalli/nvim-colorizer.lua',
        opts = function()
            require 'colorizer'.setup({
                '*'
            }, { names = false })
        end
    },

    -- Indentation
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = '▏',
                highlight = '@comment',
            },
            scope = {
                show_start = false,
                highlight = '@annotation',
            },
            exclude = {
                filetypes = { 'help', 'markdown', 'text', 'terminal', 'dashboard' },
            }
        }
    },

    -- FT Plugins
    { 'fladson/vim-kitty',        ft = 'kitty' },
    { 'stephenway/postcss.vim',   ft = 'css' },
    { 'folke/neodev.nvim',        opts = {} },

    -- Language Server Protocol
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    {
        'danymat/neogen',
        opts = { snippet_engine = 'luasnip' },
        init = function()
            nnoremap('<leader>nf', ':Neogen func<CR>')
            nnoremap('<leader>nc', ':Neogen class<CR>')
        end,
    },
    'tpope/vim-sleuth',
    {
        'mfussenegger/nvim-jdtls',
        ft = 'java',
        config = function()
            require('jdtls').start_or_attach({
                cmd = { '/opt/homebrew/bin/jdtls' },
                root_dir = vim.fs.dirname(vim.fs.find({ '.gradlew', '.git', 'mvnw' }, { upward = true })[1]),
            })
        end,
    },

}
