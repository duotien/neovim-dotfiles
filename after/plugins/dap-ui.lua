local dapui = require("dapui")
local dap = require("dap")
dapui.setup()

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end

dap.listeners.before.event_existed.dapui_config = function()
	dapui.close()
end


vim.keymap.set("n", '<leader>dt', function() dapui.toggle() end)
