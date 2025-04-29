return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        {
            'github/copilot.vim',
            config = function()
                vim.g.copilot_enabled = false
            end
        },
    },
    opts = {
        strategies = {
            chat = {
                adapter = 'copilot',
            },
            inline = {
                adapter = 'copilot',
            },
            cmd = {
                adapter = 'copilot',
            },
        }
    },
    cmd = { 'CodeCompanion', 'CodeCompanionActions',
        'CodeCompanionChat', 'CodeCompanionCmd' }
}
