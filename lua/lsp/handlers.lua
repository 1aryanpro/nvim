local M = {}

M.setup = function()
  local signs = {
    { name = 'DiagnosticSignError', text = ' ' },
    { name = 'DiagnosticSignWarn', text = ' ' },
    { name = 'DiagnosticSignHint', text = ' ' },
    { name = 'DiagnosticSignInfo', text = ' ' },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
  end

  local diagnosticsConfig = {
    virtual_text = false,
    signs = {
      active = signs,
    },
    underline = true,
    severity_sort = true,
  }

  vim.diagnostic.config(diagnosticsConfig)
end

M.on_attach = function(client, _)
  if client.name == 'tsserver' then
    client.server_capabilities.document_formatting = false
  end
end

return M
