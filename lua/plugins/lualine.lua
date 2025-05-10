-- 状态栏
return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			theme = "auto",
			section_separators = "",
			component_separators = "",
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = {
				"branch",
				"diff",
			},
			lualine_c = {
				"filename",
			},
			lualine_x = {
				{
					"diagnostics",
					sources = { "nvim_lsp" },
					update_in_insert = true,
				},
				"encoding",
				"filetype",
			},
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		extensions = { "neo-tree" },
	},
	lazy = false,
}
