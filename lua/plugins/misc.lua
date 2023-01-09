vim.cmd [[colorscheme onedark]]

require 'colorizer'.setup({
  'css';
  'javascript';
  'vue';
  css = { rgb_fn = true; };
}, { names = false; })

require 'delaytrain'.setup {
  grace_period = 2,
  ignore_filetypes = { "help" }
}

require 'neogen'.setup { snippet_engine = "luasnip" }
