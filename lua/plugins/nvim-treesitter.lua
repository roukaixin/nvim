return {
	"nvim-treesitter/nvim-treesitter",
	main = "nvim-treesitter.configs",
	build = ":TSUpdate",
	event = "VeryLazy",
	opts = {
		auto_install = true,
		ensure_installed = { "lua", "vim", "vimdoc" },
		highlight = { enable = true },
	},
}
