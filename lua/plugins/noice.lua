return {
	"folke/noice.nvim",
	enabled = false,
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		cmdline = {
			enabled = false,
		},
		messages = {
			enabled = false,
		},
	},
	config = function(_, opts)
		require("noice").setup(opts)
		print = function(...)
			local msg = table.concat(vim.tbl_map(tostring, { ... }), " ")
			vim.notify(msg)
		end
	end,
}
