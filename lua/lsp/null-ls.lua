local null_ls = require 'null-ls'

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with { extra_args = { '--single-quote', '--jsx-single-quote' } },
    formatting.black.with { extra_args = { '--fast' } },
    formatting.stylua.with {
      condition = function(utils)
        return utils.root_has_file { 'stylua.toml', '.stylua.toml' }
      end,
    },
    formatting.clang_format,
  },
}
