-- 显示行号
vim.opt.number = true
-- 显示相对行号
vim.opt.relativenumber = true

-- 高亮当前光标所在行
vim.opt.cursorline = true
vim.opt.colorcolumn = "120"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0

-- 自动读取
vim.opt.autoread = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- 忽略大小写
vim.opt.ignorecase = true
-- 输入大写时，只显示大写
vim.opt.smartcase = true

-- 取消搜索高亮
vim.opt.hlsearch = false

-- 显示模式
vim.opt.showmode = false

-- 复制到系统粘贴板
vim.opt.clipboard = "unnamedplus"

vim.opt.signcolumn = "yes"

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldenable = true
vim.opt.foldtext = vim.lsp.foldtext()
vim.opt.fillchars = {
	eob = " ",
	fold = " ",
	foldclose = "",
	foldopen = "",
	foldsep = " ",
}

vim.opt.foldmethod = "indent"

vim.filetype.add({
	filename = {
		["docker-compose.yaml"] = "yaml.docker-compose",
		["docker-compose.yml"] = "yaml.docker-compose",
		["compose.yaml"] = "yaml.docker-compose",
		["compose.yml"] = "yaml.docker-compose",
	},
})
