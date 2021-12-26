lua require 'user'

source $NVIMCONFIG/plugConfig/install.vim
source $NVIMCONFIG/plugConfig/dashboard.vim
source $NVIMCONFIG/plugConfig/gitgutter.vim
source $NVIMCONFIG/plugConfig/quickscope.vim
source $NVIMCONFIG/plugConfig/telescope.vim
source $NVIMCONFIG/plugConfig/goyo.vim
source $NVIMCONFIG/plugConfig/misc.vim

lua require 'plugins'
lua require 'lsp.all'
