local comment  = require 'Comment'
local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

comment.setup {
  ignore = '^$',
  toggler = {
    line = '<leader>//',
    block = '<leader>??'
  },
  opleader = {
    line = '<leader>/',
    block = '<leader>?'
  },
  pre_hook = function(ctx)
    local CU = require 'Comment.utils'
    local TU = require 'ts_context_commentstring.utils'

    local location = nil
    if ctx.ctype == CU.ctype.block then
      location = TU.get_cursor_location()
    elseif ctx.cmotion == CU.cmotion.v or ctx.cmotion == CU.cmotion.V then
      location = TU.get_visual_start_location()
    end

    return require('ts_context_commentstring.internal').calculate_commentstring {
      key = ctx.ctype == CU.ctype.line and '__default' or '__multiline',
      location = location,
    }
  end,
}
