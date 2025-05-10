-- tab 栏
return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(_, _, diagnostics_dict, _)
				local indicator = " "
				for level, number in pairs(diagnostics_dict) do
					local symbol
					if level == "error" then
						symbol = " "
					elseif level == "warning" then
						symbol = " "
					else
						symbol = " "
					end
					indicator = indicator .. number .. symbol
				end
				return indicator
			end,
			offsets = {
				{
					filetype = "neo-tree",
					text = function()
						return vim.fn.getcwd()
					end,
					highlight = "Directory",
					text_align = "left",
				},
			},
		},
	},
	keys = {
		{ "<leader>bh", "<Cmd>BufferLineCyclePrev<CR>", silent = true, desc = "移动到左边的 tab" },
		{ "<leader>bl", "<Cmd>BufferLineCycleNext<CR>", silent = true, desc = "移动到右边的 tab" },
		{ "<leader>bd", "<Cmd>bdelete<CR>", silent = true, desc = "删除当前 tab" },
		{ "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", silent = true, desc = "关闭其他 tab" },
		{ "<leader>bp", "<Cmd>BufferLinePick<CR>", silent = true, desc = "选择跳转到那个 tab" },
		{ "<leader>bc", "<Cmd>BufferLinePickClose<CR>", silent = true, desc = "选择关闭那个 tab" },
	},
	lazy = false,
	config = function(_, opts)
		vim.opt.termguicolors = true
		require("bufferline").setup(opts)
	end,
}
