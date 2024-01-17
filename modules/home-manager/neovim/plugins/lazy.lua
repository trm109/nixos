require("lazy").setup({
	"tpope/vim-ragtag",
	"neovim/nvim-lspconfig",
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	"ellisonleao/gruvbox.nvim",
	"folke/neodev.nvim",
	"hrsh7th/nvim-cmp",
	"nvim-telescope/telescope.nvim",
	{ 
		'nvim-telescope/telescope-fzf-native.nvim', 
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
	},
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	{ 
		"rafamadriz/friendly-snippets"
	},
	'nvim-lualine/lualine.nvim',
	'nvim-tree/nvim-web-devicons',
	'LnL7/vim-nix',
	'nvim-tree/nvim-tree.lua',
	'folke/which-key.nvim',
	'NvChad/nvim-colorizer.lua',
	'lewis6991/gitsigns.nvim',
	'windwp/nvim-autopairs',
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
})

-- Gruvbox
require("gruvbox").setup({
	terminal_colors = true,
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
})
vim.cmd("colorscheme gruvbox")

-- Comment
require("Comment").setup({
	padding = true,
})
-- gcc (toggles current line using linewise comment)
-- gbc (toggles current line using blockwise comment)
-- [count]gcc
-- [count]gbc


-- Language Servers
local lspconfig = require('lspconfig')
-- Mason
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls", 
        "clangd",
        "marksman",
        "nil_ls",
        "jedi_language_server",
        "svelte",
        "taplo",
        "yamlls",
        "bashls",
    },
})
