nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nnoremap('gl', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>')
nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')

nnoremap('<leader>lk', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nnoremap('<leader>lp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
nnoremap('<leader>ln', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
nnoremap('<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>')
nnoremap('<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>')

