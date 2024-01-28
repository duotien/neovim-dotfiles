" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
	" Declare the list of plugins.
	Plug 'm4xshen/autoclose.nvim'
	Plug 'neovim/nvim-lspconfig'
	" Autocompletion
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'L3MON4D3/LuaSnip'

	Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
	Plug 'folke/neodev.nvim'
	Plug 'tanvirtin/monokai.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'mbbill/undotree'
	Plug 'folke/which-key.nvim'
	Plug 'ThePrimeagen/harpoon'
	Plug 'folke/zen-mode.nvim'
	Plug 'tpope/vim-fugitive'
	Plug 'nvim-tree/nvim-web-devicons'

	" List ends here. Plugins become visible to Vim after this call.
call plug#end()

luafile ~/.config/nvim/lua/lsp.lua
luafile ~/.config/nvim/lua/remap.lua
luafile ~/.config/nvim/after/plugins/autoclose.lua
luafile ~/.config/nvim/after/plugins/treesitter.lua
luafile ~/.config/nvim/after/plugins/telescope.lua
luafile ~/.config/nvim/after/plugins/undotree.lua
luafile ~/.config/nvim/after/plugins/which-key.lua
luafile ~/.config/nvim/after/plugins/harpoon.lua
luafile ~/.config/nvim/after/plugins/zen-mode.lua
luafile ~/.config/nvim/after/plugins/cmp.lua
luafile ~/.config/nvim/after/plugins/devicons.lua

syntax on
colorscheme monokai

set nu
set rnu
set nowrap
set tabstop=4
set shiftwidth=4
set smarttab
set scrolloff=8
set signcolumn=yes

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
set clipboard=unnamedplus
