local wk = require("which-key")

wk.register({
	["<leader>f"] = { name = "+file" },
	["<leader>ff"] = { "Find File" },
	["<leader>fb"] = { "Buffers" },
	["<leader>fg"] = { "Live Grep" },
	["<leader>fh"] = { "Help Tags" },


	["<leader>z"] = { name = "+zen" },
	["<leader>zz"] = { "Zen light" },
	["<leader>zZ"] = { "SUPER ZEN" },

	["<leader>h"] = { name = "+harpoon" },
	["<leader>ha"] = { "Mark file" },
	["<leader>hh"] = { "Toggle menu" },

	["<leader>u"] = { "Toggle undo tree" },

	["<leader>d"] = { name = "+debug" },
	["<leader>dc"] = { "Continue" },
	["<leader>dJ"] = { "Step Over" },
	["<leader>dj"] = { "Step Into" },
	["<leader>dK"] = { "Step Out" },
	["<leader>dl"] = { "Run Last" },
	["<leader>dr"] = { "Restart" },
	["<leader>dd"] = { "Disconnect" },
	["<leader>db"] = { "Toggle Breakpoint" },
	["<leader>dt"] = { "Toggle DAP-UI" },

	["<leader>p"] = { name = "+project" },
	["<leader>pv"] = { "Open netrwc" },

	["gd"] = { "Go to Definition" },
	["K"] = { "Hover" },
	["[d"] = { "Next Diagnostic" },
	["]d"] = { "Previous Diagnostic" },

	["<leader>vws"] = { "Workspace Symbol" },
	["<leader>vd"] = { "Diagnostics" },
	["<leader>vca"] = { "Code Action" },
	["<leader>vrr"] = { "References" },
	["<leader>vrn"] = { "Rename" },
	["<leader>vf"] = { "Format" },
})
wk.setup()
