local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
		['<CR>'] = cmp.mapping.confirm({select = false}),
	})
})

