local opts = { noremap = true, silent = true }
function _G.keymap(mode, from, to, copts)
  if copts == nil then copts = {} end
  copts = vim.tbl_deep_extend('force', copts, opts)
  vim.api.nvim_set_keymap(mode, from, to, copts)
end

function _G.noremap(from, to, copts)
  keymap("", from, to, copts)
end

function _G.nnoremap(from, to, copts)
  keymap("n", from, to, copts)
end

function _G.vnoremap(from, to, copts)
  keymap("v", from, to, copts)
end

function _G.onoremap(from, to, copts)
  keymap("o", from, to, copts)
end

function _G.t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
