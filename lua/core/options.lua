local opt = vim.opt

-- 相对行号
opt.relativenumber = true
-- 行号
opt.number = true

-- tab 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- 自动缩进
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索不区分大小写
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
