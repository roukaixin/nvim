-- 格式化插件
return {
	"stevearc/conform.nvim",
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			c = { "clang-format" },
			sql = { "sqlfluff" },
		},
	},
	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format({ async = true })
			end,
			mode = { "n", "v" },
			desc = "Format buffe",
			silent = true,
		},
	},
}
