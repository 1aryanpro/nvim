local comment    = require 'Comment'
local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {}

comment.setup {
  ignore = '^$',
  mappings = {
    extra = true,
  }
}
