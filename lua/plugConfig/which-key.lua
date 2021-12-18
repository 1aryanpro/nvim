local wk = require("which-key")

which_key_map = {
  'name': 'Leader',
  'a': 'CodeAction',
  'h': 'Remove Highlight',
  'r': 'Rename Symbol',
  's': 'Source Config',
  't': 'Open Integrated Terminal',
  'z': 'Goyo Zen Mode',
  ';': 'Open Dashboard',
  '/': '+Comment',
  '//': 'Comment Lines',
  '?': '+BlockComment',
  '??': 'BlockComment Lines'
}

which_key_map['f'] = {
  'name': '+Telescope',
  'f': 'Search Files',
  'b': 'File Browser',
  'h': 'Search History',
  'm': 'Jump to Mark',
  'a': 'Grep Search',
  'p': 'Recent Projects',
}

which_key_map['c'] = {
  'name': '+ColorSchemes',
  'c': 'Change Color Scheme',
}

which_key_map['n'] = {
  'name': '+New',
  'f': 'New File'
}

which_key_map['y'] = {
  'name': '+YankCB',
  'f': 'Yank File',
  'y': 'Yank Line',
}

wk.setup()
wk.register(which_key_map, {prefix = '<leader>'})
