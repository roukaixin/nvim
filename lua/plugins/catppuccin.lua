return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		auto_integrations = true,
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.api.nvim_cmd({
			cmd = "colorscheme",
			args = {
				"catppuccin-mocha",
			},
		}, {
			output = false,
		})
	end,
}
