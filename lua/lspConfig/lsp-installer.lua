local lsp_installer = require('nvim-lsp-installer')

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
  virtual_text = false, --toggle if annoying
  signs = {
    active = signs,
  },
  underline = true,
  severity_sort = true,
}

vim.diagnostic.config(config)

local on_attach = function(client, _)
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end
end

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)


lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities
  }

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("lspConfig.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server.name == "jsonls" then
    local jsonls_opts = require("lspConfig.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  server:setup(opts)
end)
