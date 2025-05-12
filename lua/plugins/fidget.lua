return {
	"j-hui/fidget.nvim",
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

		print = function(...)
			local msg = table.concat(vim.tbl_map(tostring, { ... }), " ")
			vim.notify(msg, vim.log.levels.INFO)
		end
	end,
}
