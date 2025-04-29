local kind_icons = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "󱄽",
    Color = "󰏘",
    File = "󰈙",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "",
}

local source_labels = {
    LSP = '[LSP]',
    Snippets = '[Snip]',
    Path = '[Path]',
    Buffer = '[Buf]',
    Cmdline = '[Cmd]',
}

return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets',
        "xzbdmw/colorful-menu.nvim"
    },

    version = '1.*',
    event = "InsertEnter",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
        --     preset = 'none',
        --     ['<CR>'] = { 'select_and_accept', 'fallback' },
        --     ['<Tab>'] = {
        --         function(cmp)
        --             if cmp.is_menu_visible() then
        --                 require('blink.cmp')['select_next']()
        --                 return true
        --             end
        --             return false
        --         end,
        --         'snippet_forward',
        --         'fallback'
        --     },
        --     ['<S-Tab>'] = {
        --         function(cmp)
        --             if cmp.is_menu_visible() then
        --                 require('blink.cmp')['select_prev']()
        --                 return true
        --             end
        --             return false
        --         end,
        --         'snippet_backward',
        --         'fallback'
        --     },
            ['<C-e>'] = { 'show', 'cancel', 'fallback' },
        },
        sources = {
            default = { 'lsp', 'path', 'snippets' },
            per_filetype = {
                codecompanion = { "codecompanion" },
            }
        },

        appearance = {
            nerd_font_variant = 'normal'
        },

        completion = {
            menu = {
                border = 'rounded',
                draw = {
                    components = {
                        kind_icon = {
                            text = function(ctx)
                                return kind_icons[ctx.kind] or ctx.kind
                            end
                        },
                        source_name = {
                            text = function(ctx)
                                return source_labels[ctx.source_name] or ctx.source_name
                            end
                        },
                        label = {
                            text = function(ctx)
                                return require("colorful-menu").blink_components_text(ctx)
                            end,
                            highlight = function(ctx)
                                return require("colorful-menu").blink_components_highlight(ctx)
                            end,
                        },
                    },

                    columns = {
                        { "kind_icon" },
                        { 'source_name' },
                        { "label" },
                    },
                }
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 0,
                window = {
                    border = 'rounded',
                }
            },
        },
    },
    opts_extend = { "sources.default" }
}
