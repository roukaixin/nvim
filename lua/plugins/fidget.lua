return {
	"j-hui/fidget.nvim",
    enabled = false,
	event = "VeryLazy",
	opts = {
		notification = {
			override_vim_notify = true,
			window = {
			},
		},
	},
	config = function(_, opts)
		require("fidget").setup(opts)
	end,
}
