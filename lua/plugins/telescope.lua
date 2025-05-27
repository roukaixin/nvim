return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	opts = {
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("fzf")
	end,
	keys = {
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep({})
			end,
			desc = "查找文件内容",
			silent = true,
		},
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files({})
			end,
			desc = "根据文件名查找",
			silent = true,
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers({})
			end,
			desc = "显示全部 buffers",
			silent = true,
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags({})
			end,
			desc = "Telescope help tags",
			silent = true,
		},
	},
}
