local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
require("telescope").setup{
	defaults = {
		initial_mode = "normal",
		mappings = {
			n = {
				["<C-c>"] = actions.close,
			},
			i = {
			-- map actions.which_key to <C-h> (default: <C-/>)
			-- actions.which_key shows the mappings for your picker,
			-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key",
				["<C-c>"] = false,
			}
		}
	},
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


