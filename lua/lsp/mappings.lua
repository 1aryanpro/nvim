nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nnoremap('gl', '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>')
nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')

nnoremap('<leader>lk', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nnoremap('<leader>lf', '<cmd>lua vim.lsp.buf.formatting_sync()<CR>')
nnoremap('<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>')
nnoremap('<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>')

nnoremap('[g', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
nnoremap(']g', '<cmd>lua vim.diagnostic.goto_next()<CR>')

