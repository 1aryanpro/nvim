require 'lualine'.setup {
  options = {
    theme = 'auto',
    disabled_filetypes = { 'which_key' },
    section_separators = { left = '▌', right = '▐' },
    component_separators = ''
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = {
      'filename',
      {'GitAdded',   color = {fg = '#98c379'}},
      {'GitEdited',  color = {fg = '#61afef'}},
      {'GitRemoved', color = {fg = '#e86671'}}
    },
    lualine_x = { 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},

  extensions = {}
}
