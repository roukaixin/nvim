return {
	"folke/tokyonight.nvim",
	opts = {
		style = "day",
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.api.nvim_cmd({
			cmd = "colorscheme",
			args = {
				"tokyonight",
			},
		}, {
			output = false,
		})
	end,
	lazy = false,
	priority = 1000,
}
