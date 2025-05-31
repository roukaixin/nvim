return {
	"luukvbaal/statuscol.nvim",
	lazy = false,
	opts = {
		ft_ignore = {
			"neo-tree",
			"dbee",
		},
	},
	config = function(_, opts)
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			relculright = true,
			segments = {
				{
					text = { builtin.foldfunc },
					click = "v:lua.ScFa",
				},
				{
					text = { builtin.lnumfunc, " " },
					click = "v:lua.ScLa",
				},
				{
					text = { "%s" },
					click = "v:lua.ScSa",
				},
			},
		})
		vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
			callback = function()
				if vim.tbl_contains(opts.ft_ignore, vim.api.nvim_buf_get_option(0, "filetype")) then
					vim.api.nvim_cmd({
						cmd = "setlocal",
						args = {
							"foldcolumn=0",
						},
					}, {
						output = false,
					})
				end
			end,
		})
	end,
}
