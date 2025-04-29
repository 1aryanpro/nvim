return {
    -- Misc
    {
        "mistricky/codesnap.nvim",
        build = "make",
        opts = {
            code_font_family = "MonaspiceNe Nerd Font",
            watermark = "",
            bg_x_padding = 61,
            bg_y_padding = 41,
            save_path = "~/Desktop/"
        },
        cmd = {
            "CodeSnap", "CodeSnapSave",
            "CodeSnapASCII",
            "CodeSnapHighlight", "CodeSnapSaveHighlight",
        }
    },
    {
        'karb94/neoscroll.nvim',
        opts = {
            hide_cursor = false,
            easing = 'sine',
            duration_multiplier = 1.4
        },
        keys = {
            '<C-u>', '<C-d>',
            '<C-b>', '<C-f>',
            '<C-y>', '<C-e>',
            'zt', 'zz', 'zb' }
    },
    { 'kyazdani42/nvim-web-devicons', opts = {},          lazy = true },
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
                height = 0.9
            },
            on_open = function()
                vim.opt_local.number = false
                vim.opt_local.relativenumber = false
                vim.opt_local.signcolumn = 'no'
                vim.opt_local.colorcolumn = ''
            end
        },
        cmd = "ZenMode"
    },
    { 'dstein64/vim-startuptime',     cmd = 'StartupTime' },
    {
        'stevearc/oil.nvim',
        cmd = 'Oil',
        opts = {
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
                is_always_hidden = function(name, _)
                    local m = name:match('^.DS_Store$')
                    return m
                end,
            },
            float = {
                padding = 10,
                max_width = 0.5,
            },
            keymaps = {
                ['<BS>'] = { 'actions.parent', mode = 'n' },
            }
        },
        keys = {
            { '<Leader>fo', ':Oil --float<cr>' }
        },
    },

    -- Colors
    {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
        init = function()
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
    { 'tpope/vim-repeat',            keys = { '.' } },
    'tpope/vim-surround',
    { 'norcalli/nvim-colorizer.lua', ft = 'css' },

    -- Indentation
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            indent = {
                char = '▏',
                highlight = '@comment',
            },
            scope = {
                char = '▍',
                show_start = false,
                show_end = false,
            },
            exclude = {
                filetypes = { 'help', 'markdown', 'text', 'terminal', 'dashboard' },
            }
        }
    },

    -- FT Plugins
    { 'fladson/vim-kitty',      ft = 'kitty' },
    { 'stephenway/postcss.vim', ft = 'css' },
    {
        'folke/neodev.nvim',
        cond = function()
            return vim.loop.cwd() == vim.fn.expand('~/.config/nvim')
        end,
        opts = {}
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        ft = { "markdown", "codecompanion" },
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {
            completions = {
                blink = { enabled = true }
            },
            sign = {
                enabled = false,
            },
            bullet = {
                icons = { '', '', '' },
            },
        },
    },

    -- Language Server Protocol
    { 'williamboman/mason.nvim', cmd = 'Mason' },
    'williamboman/mason-lspconfig.nvim',
    {
        'danymat/neogen',
        opts = { snippet_engine = 'luasnip' },
        keys = {
            { '<leader>nf', ':Neogen func<CR>' },
            { '<leader>nc', ':Neogen class<CR>' }
        }
    },
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
