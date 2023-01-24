local keyOpts = { noremap = true, silent = true }
function _G.keymap(mode, from, to, opts)
  if opts == nil then opts = {} end
  opts = vim.tbl_deep_extend('force', keyOpts, opts)
  vim.api.nvim_set_keymap(mode, from, to, opts)
end

function _G.noremap(from, to, opts)
  keymap('', from, to, opts)
end

function _G.nnoremap(from, to, opts)
  keymap('n', from, to, opts)
end

function _G.vnoremap(from, to, opts)
  keymap('v', from, to, opts)
end

function _G.onoremap(from, to, opts)
  keymap('o', from, to, opts)
end

function _G.t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.augroup(name, opts)
  if opts == nil then opts = {} end
  return vim.api.nvim_create_augroup(name, opts)
end

function _G.autocmd(events, opts)
  if opts == nil then opts = {} end
  vim.api.nvim_create_autocmd(events, opts)
end

function _G.prequire(moduleName)
  local status, moduleObj = pcall(require, moduleName)
  if not status then
    return nil
  else
    return moduleObj
  end
end
