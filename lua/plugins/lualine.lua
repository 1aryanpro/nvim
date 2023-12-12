return {
  'hoob3rt/lualine.nvim',
  dependencies = { 'Isrothy/lualine-diagnostic-message' },
  config = {
    options = {
      theme = 'auto',
      disabled_filetypes = { 'which_key' },
      section_separators = { left = '▌', right = '▐' },
      component_separators = ''
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'filename' },
      lualine_c = {
        {
          'diagnostic-message',
          colors = {
            error = '#E86671',
            warn = '#E5C07B',
            hint = '#C678DD',
            info = '#56B6C2'
          },
          icons = {
            error = '',
            warn = '',
            hint = '',
            info = ''
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
  },
}
