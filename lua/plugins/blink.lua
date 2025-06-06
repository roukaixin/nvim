-- 补全
return {
	"saghen/blink.cmp",
	enabled = true,
	version = "1.*",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	event = "VeryLazy",
	opts = {
		-- 补全
		completion = {
			documentation = {
				auto_show = true,
				window = {
					border = "rounded",
				},
			},
			list = {
				selection = {
					preselect = true,
					auto_insert = true,
				},
			},
			menu = {
				border = "rounded",
				draw = {
					padding = { 1, 1 },
					components = {
						kind_icon = {
							text = function(ctx)
								return " " .. ctx.kind_icon .. ctx.icon_gap
							end,
						},
						kind = {
							text = function(ctx)
								return ctx.kind
							end,
						},
					},
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},
				},
			},
		},
		-- 方法签名
		signature = {
			enabled = true,
			window = {
				border = "rounded",
			},
		},
		keymap = {
			preset = "none",
			["<C-h>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide", "fallback" },
			["<CR>"] = { "accept", "fallback" },
			["<Tab>"] = { "snippet_forward", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "fallback" },
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<C-p>"] = { "select_prev", "fallback_to_mappings" },
			["<C-n>"] = { "select_next", "fallback_to_mappings" },
			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
			["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},
		sources = {
			default = {
				"lsp",
				"buffer",
				"snippets",
				"path",
			},
		},
		cmdline = {
			enabled = true,
			completion = {
				menu = {
					auto_show = true,
				},
				list = {
					selection = {
						preselect = true,
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
