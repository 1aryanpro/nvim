local opts = { noremap = true, silent = true }
function _G.keymap(mode, from, to, copts)
  if copts == nil then copts = {} end
  copts = vim.tbl_deep_extend('force', opts, copts)
  vim.api.nvim_set_keymap(mode, from, to, copts)
end

function _G.noremap(from, to, copts)
  keymap('', from, to, copts)
end

function _G.nnoremap(from, to, copts)
  keymap('n', from, to, copts)
end

function _G.vnoremap(from, to, copts)
  keymap('v', from, to, copts)
end

function _G.onoremap(from, to, copts)
  keymap('o', from, to, copts)
end

function _G.t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.augroup(name, copts)
  return vim.api.nvim_create_augroup(name, copts)
end

function _G.autocmd(events, copts)
  vim.api.nvim_create_autocmd(events, copts)
end

function _G.prequire(moduleName)
  local status, moduleObj = pcall(require, moduleName)
  if not status then
    return nil
  else
    return moduleObj
  end
end
