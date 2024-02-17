local dap = require('dap')
dap.adapters.lldb = {
	type = "executable",
	command = "/opt/homebrew/bin/lldb-vscode", -- adjust as needed
	name = "lldb",
}

local lldb = {
	name = "Launch",
	type = "lldb",   -- matches the adapter
	request = "launch", -- could also attach to a currently running process
	program = function()
		return vim.fn.input(
			"Path to executable: ",
			vim.fn.getcwd() .. "/",
			"file"
		)
	end,
	cwd = "${workspaceFolder}",
	stopOnEntry = false,
	args = {},
	runInTerminal = true,
}

dap.configurations.cpp = {
	lldb
}

vim.keymap.set("n", '<leader>dc', function() dap.continue() end)
vim.keymap.set("n", '<leader>dJ', function() dap.step_over() end)
vim.keymap.set("n", '<leader>dj', function() dap.step_into() end)
vim.keymap.set("n", '<leader>dK', function() dap.step_out() end)
vim.keymap.set("n", '<leader>dl', function() dap.run_last() end)
vim.keymap.set("n", '<leader>dr', function() dap.restart() end)
vim.keymap.set("n", '<leader>dd', function() dap.disconnect() end)
vim.keymap.set("n", '<leader>db', function() dap.toggle_breakpoint() end)

