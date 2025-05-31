-- 文档地址：https://nvimdev.github.io/lspsaga/
-- :Lspsaga outline 代码大纲。命令：toggle_or_jump(o)/jump(e):跳转到代码位置、quit(q):退出
return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		symbol_in_winbar = {
			enable = false,
		},
		finder = {
			keys = {
				toggle_or_open = "<CR>",
			},
		},
		lightbulb = {
			enable = false,
			virtual_text = false,
		},
		ui = {
			border = "rounded",
		},
	},
	keys = {
		{ "<leader>lr", "<Cmd>Lspsaga rename<CR>" },
		{ "<leader>lc", "<Cmd>Lspsaga code_action<CR>" },
		{ "<leader>lh", "<Cmd>Lspsaga hover_doc<CR>" },
		{ "<leader>lg", "<Cmd>Lspsaga goto_definition<CR>" },
	},
}
