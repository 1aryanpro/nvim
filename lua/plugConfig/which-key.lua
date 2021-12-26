local wk = require("which-key")

wk.setup({
	icons = {
		separator = "➜ ",
	},
	operators = {
		["<leader>/"] = "Comment",
		["<leader>?"] = "BlockComment",
	},
	ignore_missing = true,
  spelling = {
    enabled = true,
    suggestions = 10,
  },
	layout = {
		align = "center",
	}
})

local leader_map = {
	h = { "Remove Highlight" },
	s = { "Source Config" },
	t = { "Open Integrated Terminal" },
	z = { "Goyo Zen Mode" },
	[";"] = { "Open Dashboard" },
	["/"] = { "+Comment" },
	["//"] = { "Comment Line" },
	["<Space>"] = { "Telescope Find Files" },
	-- ["?"] = { "+BlockComment" },
	-- ["??"] = { "BlockComment Line" },

	l = {
		name = "+LSP",
		a = { "Code Actions" },
		r = { "Rename Symbol" },
		n = { "Goto Next Diagnostic" },
		p = { "Goto Prev Diagnostic" },
		k = { "Show Signature Help" },
		f = { "Format File" },
	},

	f = {
		name = "+Telescope",
		f = { "Find Files" },
		b = { "File Browser" },
		h = { "Search History" },
		m = { "Jump Mark" },
		a = { "Grep Search" },
		p = { "Recent Projects" },
	},

	c = {
		name = "+ColorSchemes",
		c = { "Change Color Scheme" },
		-- s = { "Toggle OneDark" },
	},

	y = {
		name = "+YankCB",
		f = { "Copy File" },
		y = { "Copy Line" },
	},
}

wk.register(leader_map, { prefix = "<leader>" })
