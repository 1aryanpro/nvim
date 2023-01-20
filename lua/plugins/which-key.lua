local wk = require 'which-key'

wk.setup {
  icons = {
    separator = '➜ ',
  },
  -- ignore_missing = true,
  layout = {
    align = 'center',
  }
}

local leader_map = {
  h = { 'Remove Highlight' },
  [';'] = { 'Open Dashboard' },
  -- ['<Space>'] = { 'Telescope Find Files' },

  l = {
    name = '+LSP',
    a = { 'Code Actions' },
    r = { 'Rename Symbol' },
    n = { 'Goto Next Diagnostic' },
    p = { 'Goto Prev Diagnostic' },
    k = { 'Show Signature Help' },
    f = { 'Format File' },
  },

  n = {
    name = "+Neogen",
    c = { 'Class' },
    f = { 'Function' }
  },

  f = {
    name = '+Telescope',
    f = { 'Find Files' },
    b = { 'File Browser' },
    h = { 'Search History' },
    m = { 'Jump Mark' },
    a = { 'Grep Search' },
    p = { 'Recent Projects' },
  },

  y = {
    name = '+YankCB',
    f = { 'Copy File' },
    y = { 'Copy Line' },
  },
}

wk.register(leader_map, { prefix = '<leader>' })


local g_map = {
  d = { 'Goto Definition' },
  D = { 'Goto Declaration' },
  l = { 'View Diagnostic' },
  r = { 'See References' },
  c = {
    name = '+Comment',
    c = 'Current Line',
    o = 'Next Line',
    O = 'Prev Line',
    A = 'End of Current Line',
  },
  b = {
    name = '+BlockComment',
    c = 'Current Line',
  },
}

wk.register(g_map, { prefix = 'g' })
