lua << EOF
telescope = require('telescope')
sorters = require('telescope.sorters')
actions = require('telescope.actions')

telescope.setup {
	defaults = {
		file_ignore_patterns = {"node_modules"},
		file_sorter = sorters.get_fzy_sorter,
		color_devicons = true,
		preview = {treesitter = true},
	},

	pickers = {
		find_files = {
			hidden = true
		},
		file_browser = {
			hidden = true
		}
	},
}


require("project_nvim").setup {}
telescope.load_extension('projects')
EOF

function TelescopeFileSearch() abort
	if isdirectory(".git")
		execute "Telescope git_files"
	else
		execute "Telescope find_files"
	endif
endfunction

nnoremap <leader>fb <cmd>Telescope file_browser<cr><esc>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fp <cmd>Telescope projects<cr>
nnoremap <leader><Space> <cmd>Telescope buffers<cr>

