return {
	"mfussenegger/nvim-lint",
	enabled = true,
	config = function()
		require("lint").linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			dockerfile = { "hadolint" },
			sql = { "sqlfluff" },
		}
	end,
}
