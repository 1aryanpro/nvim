local M = {}

M.setup = function()
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
    virtual_text = false,
    signs = {
      active = signs,
    },
    underline = true,
    severity_sort = true,
  }

  vim.diagnostic.config(config)
end

M.on_attach = function(client, _)
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end
end

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
