" ------------
"  vim config 
" ------------

source $NVIMCONFIG/general/base.vim
source $NVIMCONFIG/general/movement.vim
source $NVIMCONFIG/general/terminal.vim


" ----------
"  vim_plug 
" ----------

source $NVIMCONFIG/plugConfig/install.vim
source $NVIMCONFIG/plugConfig/dashboard.vim
source $NVIMCONFIG/plugConfig/gitgutter.vim
source $NVIMCONFIG/plugConfig/nerdcommenter.vim
source $NVIMCONFIG/plugConfig/quickscope.vim
source $NVIMCONFIG/plugConfig/lualine.lua
source $NVIMCONFIG/plugConfig/telescope.vim
" source $NVIMCONFIG/plugConfig/coc.vim
source $NVIMCONFIG/plugConfig/goyo.vim
source $NVIMCONFIG/plugConfig/whichKey.vim
source $NVIMCONFIG/plugConfig/misc.vim

source $NVIMCONFIG/lua/cmp-config.lua
source $NVIMCONFIG/lua/lspconfig/lsp-config.vim
" source $NVIMCONFIG/lua/lspconfig/defaults.lua
