vim.api.nvim_create_autocmd({
	"BufEnter",
	"BufWinEnter",
}, {
	callback = function()
		local ok, parser = pcall(vim.treesitter.get_parser)
		if ok and parser then
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		else
			vim.opt.foldmethod = "indent"
		end
	end,
})
