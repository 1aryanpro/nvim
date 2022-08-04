local lsp_installer = require 'nvim-lsp-installer'
local handlers = require 'lsp.handlers'

handlers.setup()

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities
  }

  if server.name == "jsonls" then
    local jsonls_opts = require("lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server.name == "pylsp" then
    local pylsp_opts = require("lsp.settings.pylsp")
    opts = vim.tbl_deep_extend("force", pylsp_opts, opts)
  end

  server:setup(opts)
end)
