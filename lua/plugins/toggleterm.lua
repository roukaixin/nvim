return {
	"akinsho/toggleterm.nvim",
	version = "*",
	enabled = true,
	config = function()
		require("toggleterm").setup({})
		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end
		vim.api.nvim_cmd({
			cmd = "autocmd",
			args = {
				"TermOpen",
				"term://*",
				"lua",
				"set_terminal_keymaps()",
			},
			bang = true,
		}, {
			output = false,
		})
	end,
	keys = {
		{
			"<leader>to",
			"<Cmd>ToggleTerm<CR>",
			desc = "打开终端",
			silent = true,
		},
		{
			"<leader>tt",
			"<Cmd>ToggleTermToggleAll<CR>",
			desc = "切换终端",
			silent = true,
		},
	},
}
