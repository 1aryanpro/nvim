local opts = {
  root_dir = require 'lspconfig'.util.root_pattern("package.json"),
  settings = {
    format = {
      enable = false
    },
  },
}

return opts
