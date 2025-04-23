-- 补全
return {
	"saghen/blink.cmp",
	version = "*",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	event = "VeryLazy",
	opts = {
		completion = {
			documentation = {
				auto_show = true,
			},
			list = {
				selection = {
					preselect = false,
					auto_insert = true,
				},
			},
		},
		keymap = {
			preset = "enter",
		},
		sources = {
			default = { "path", "snippets", "buffer", "lsp" },
		},
		cmdline = {
			enabled = true,
			completion = {
				menu = {
					auto_show = true,
				},
				list = {
					selection = {
						preselect = false,
						auto_insert = true,
					},
				},
			},
			keymap = {
				preset = "enter",
			},
			sources = function()
				local cmd_type = vim.fn.getcmdtype()
				if cmd_type == "/" or cmd_type == "?" then
					return { "buffer" }
				end
				if cmd_type == ":" or cmd_type == "@" then
					return { "cmdline" }
				end
				return {}
			end,
		},
	},
}
