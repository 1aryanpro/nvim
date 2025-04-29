return {
    'hoob3rt/lualine.nvim',
    event = "VeryLazy",
    dependencies = { 'Isrothy/lualine-diagnostic-message', 'kyazdani42/nvim-web-devicons' },
    opts = {
        options = {
            theme = 'auto',
            disabled_filetypes = { 'which_key' },
            section_separators = { left = '◣', right = '◢' },
            component_separators = { left = '╲', right = '╱' }
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = {
                {
                    'buffers',
                    -- show_filename_only = false,
                    -- hide_filename_extension = true,
                }
            },
            lualine_c = {
                -- {
                --   'diagnostic-message',
                --   colors = {
                --     error = '#E86671',
                --     warn = '#E5C07B',
                --     hint = '#C678DD',
                --     info = '#56B6C2'
                --   },
                --   icons = {
                --     error = ' ',
                --     warn = ' ',
                --     hint = ' ',
                --     info = ' '
                --   }
                -- }
            },
            lualine_x = {},
            lualine_y = { 'filetype' },
            lualine_z = { 'location' }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},

        extensions = {}
    },
}
