return {
	"kndndrj/nvim-dbee",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	build = function()
		require("dbee").install("go")
	end,
	opts = {},
	config = function(_, opts)
		require("dbee").setup(opts)
	end,
	keys = {
		{
			"<leader>dt",
			function()
				require("dbee").toggle()
			end,
			desc = "打开查询页面",
			silent = true,
		},
	},
}
