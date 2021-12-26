" ------------
"  vim config 
" ------------

lua require 'general.options'
lua require 'general.mappings'
source $NVIMCONFIG/general/config.vim
" source $NVIMCONFIG/general/mappings.vim

" ----------
"  vim_plug 
" ----------

source $NVIMCONFIG/plugConfig/install.vim
source $NVIMCONFIG/plugConfig/dashboard.vim
source $NVIMCONFIG/plugConfig/gitgutter.vim
source $NVIMCONFIG/plugConfig/quickscope.vim
source $NVIMCONFIG/plugConfig/telescope.vim
source $NVIMCONFIG/plugConfig/goyo.vim
source $NVIMCONFIG/plugConfig/misc.vim

lua require 'plugConfig'

source $NVIMCONFIG/plugConfig/lsp-mappings.vim
luafile $NVIMCONFIG/lua/lspConfig/lsp-installer.lua
" luafile $NVIMCONFIG/lua/lspConfig/init.lua
" source $NVIMCONFIG/plugConfig/lsp-config.vim
