-- 格式化插件
return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			yaml = { "yamlfmt" },
		},
	},
	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format()
			end,
			mode = { "n", "v" },
			desc = "format code",
			silent = true,
		},
	},
}
