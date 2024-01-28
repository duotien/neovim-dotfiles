--vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
-- Define a function that toggles and focuses on undotree

-- Map the leader key to the custom function
vim.keymap.set('n', '<leader>u', function() vim.cmd.UndotreeToggle() vim.cmd.UndotreeFocus() end)

