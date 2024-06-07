nnoremap('gd', ':lua vim.lsp.buf.definition()<CR>')
nnoremap('gD', ':lua vim.lsp.buf.declaration()<CR>')
nnoremap('gr', ':lua vim.lsp.buf.references()<CR>')
nnoremap('gi', ':lua vim.lsp.buf.implementation()<CR>')
nnoremap('gl', ':lua vim.diagnostic.open_float({ border = \'rounded\' })<CR>')
nnoremap('K', ':lua vim.lsp.buf.hover()<CR>')

nnoremap('<leader>lk', ':lua vim.lsp.buf.signature_help()<CR>')
nnoremap('<leader>lf', ':lua vim.lsp.buf.format()<CR>')
nnoremap('<leader>lr', ':lua vim.lsp.buf.rename()<CR>')
nnoremap('<leader>la', ':lua vim.lsp.buf.code_action()<CR>')

nnoremap('[g', ':lua vim.diagnostic.goto_prev()<CR>')
nnoremap(']g', ':lua vim.diagnostic.goto_next()<CR>')
