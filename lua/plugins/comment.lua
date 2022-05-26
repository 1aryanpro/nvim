local comment    = require 'Comment'
local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

comment.setup {
  ignore = '^$',
  mappings = {
    extra = true,
  }
}
