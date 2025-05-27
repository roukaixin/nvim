vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		local buf = args.buf
		local ft = vim.bo.filetype
		local lang = vim.treesitter.language.get_lang(ft)
		if lang == "" then
			return
		end
		local nvim_treesitter_status, nvim_treesitter = pcall(require, "nvim-treesitter")
		if nvim_treesitter_status then
			nvim_treesitter.install(lang):await(function(err, did_install)
				assert(not err, err)
				if did_install and pcall(vim.treesitter.start, buf) then
					vim.wo.foldmethod = "expr"
					vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end)
		end
	end,
})
