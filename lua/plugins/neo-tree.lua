-- 文件管理系统，文件树
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				never_show = {
					".DS_Store",
					".idea",
					".vscode",
				},
			},
		},
		default_component_configs = {
			git_status = {
				symbols = {
					added = "",
					modified = "",
					untracked = "?",
					renamed = "",
					deleted = "",
					ignored = "",
					unstaged = "",
					staged = "",
					conflict = "",
				},
			},
		},
		event_handlers = {
			{
				event = "file_opened",
				handler = function()
					vim.api.nvim_cmd({
						cmd = "Neotree",
						args = {
							"close",
						},
					}, {
						output = false,
					})
				end,
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
	end,
	keys = {
		{ "<leader>uf", "<Cmd>Neotree toggle<CR>", desc = "切换文件树", silent = true },
	},
}
