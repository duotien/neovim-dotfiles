function _G.Toggle_venn()
	local venn_enabled = vim.inspect(vim.b.venn_enabled)
	if venn_enabled == "nil" then
		vim.b.venn_enabled = true
		vim.cmd [[setlocal ve=all]]
		vim.cmd [[setlocal cursorcolumn]]
		vim.cmd [[setlocal cursorline]]
		vim.cmd [[colorscheme monokai_soda]]

		-- Draw a line on HJKL keystokes
		vim.api.nvim_buf_set_keymap(0, "n", "<S-Down>", "<C-v>j:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "<S-Up>", "<C-v>k:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "<S-Right>", "<C-v>l:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "<S-Left>", "<C-v>h:VBox<CR>", { noremap = true })

		-- Draw a box by pressing "f" with visual selection
		vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
	else
		vim.cmd [[setlocal ve=]]
		-- Clear only the plugin's keymaps
		vim.api.nvim_buf_del_keymap(0, 'n', "<S-Down>")
		vim.api.nvim_buf_del_keymap(0, 'n', "<S-Up>")
		vim.api.nvim_buf_del_keymap(0, 'n', "<S-Right>")
		vim.api.nvim_buf_del_keymap(0, 'n', "<S-Left>")
		vim.api.nvim_buf_del_keymap(0, 'v', "f")
		vim.cmd [[setlocal nocursorcolumn]]
		vim.cmd [[colorscheme monokai]]
		vim.b.venn_enabled = nil
	end
end

-- Toggle keymappings for venn using <leader>vv
vim.api.nvim_set_keymap('n', '<leader>vv', ":lua Toggle_venn()<CR>", { noremap = true })


