local mason = require 'mason'
local mason_lsp = require 'mason-lspconfig'
local lspconfig = require 'lspconfig'
local handlers = require 'lsp.handlers'

mason.setup()
mason_lsp.setup {
    automatic_installation = true,
}

handlers.setup()

mason_lsp.setup_handlers {
    function(server_name)
        local opts = { on_attach = handlers.on_attach }
        local config_exists, server_opts = pcall(require, 'lsp.settings.' .. server_name)

        if config_exists then
            opts = vim.tbl_deep_extend('force', server_opts, opts)
        end

        if server_name == 'denols' then
            for _, client in pairs(vim.lsp.get_clients()) do
                -- stop tsserver if denols is already active
                if client.name == 'tsserver' then
                    client.stop(false)
                end
            end
        end

        lspconfig[server_name].setup(opts)
    end,
}
