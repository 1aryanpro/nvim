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
      {
        'diagnostic-message',
        colors = {
          error = '#E86671',
          warn = '#E5C07B',
          info = '#E5C07B',
          hint = '#56B6C2'
        }
      }
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
