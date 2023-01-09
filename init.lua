require 'utils'
require 'user'
require 'plugins'
require 'lsp'

if vim.fn.argc() == 0 then
  vim.defer_fn(
    function ()
      vim.cmd('Telescope find_files')
    end,
    0
  )
end

