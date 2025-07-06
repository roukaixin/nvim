-- markdown 相关插件
return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = {
			"markdown",
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-web-devicons",
			"HakonHarnes/img-clip.nvim",
		},
		opts = {
			render_modes = true,
			completions = {
				blink = {
					enabled = true,
				},
			},
			sign = {
				enabled = false,
			},
		},
	},
	{
		"HakonHarnes/img-clip.nvim",
		opts = {
			default = {
				dir_path = function()
					return vim.fn.expand("assets/" .. vim.fn.expand("%:t:r"))
				end,
				file_name = "image-%Y%m%d%H%M%S",
				prompt_for_file_name = false,
			},
			filetypes = {
				markdown = {
					template = "![$FILE_NAME_NO_EXT]($FILE_PATH)",
				},
			},
		},
		keys = {
			{ "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
		},
	},
}
