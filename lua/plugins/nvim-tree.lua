return {
	"nvim-tree/nvim-tree.lua",
	enabled = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
		renderer = {
			icons = {
				git_placement = "after",
				glyphs = {
					git = {
						unstaged = "~",
						staged = "✓",
						unmerged = "",
						renamed = "+",
						untracked = "?",
						deleted = "",
						ignored = " ",
					},
				},
			},
		},
	},
	keys = {
		{ "<leader>uf", "<Cmd>NvimTreeToggle<CR>", desc = "切换文件树", silent = true },
	},
	lazy = false,
}
