local opts = { noremap = true, silent = true }
function _G.keymap(mode, from, to)
  vim.api.nvim_set_keymap(mode, from, to, opts)
end

function _G.noremap(from, to)
  keymap("", from, to)
end

function _G.nnoremap(from, to)
  keymap("n", from, to)
end

function _G.vnoremap(from, to)
  keymap("v", from, to)
end

function _G.onoremap(from, to)
  keymap("o", from, to)
end
