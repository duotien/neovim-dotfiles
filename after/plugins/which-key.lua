local wk = require("which-key")

wk.register({
	["<leader>f"] = { name = "+file" },
	["<leader>ff"] = { "Find File" },
	["<leader>fb"] = { "Buffers" },
	["<leader>fg"] = { "Live Grep" },
	["<leader>fh"] = { "Help Tags" },


	["<leader>z"] = { name="+zen" },
	["<leader>zz"] = { "Zen light" },
	["<leader>zZ"] = { "SUPER ZEN" },

	["<leader>h"] = { name="+harpoon" },
	["<leader>ha"] = { "Mark file" },
	["<leader>hh"] = { "Toggle menu" },

	["<leader>u"] = { "Toggle undo tree"}
})
wk.setup()
