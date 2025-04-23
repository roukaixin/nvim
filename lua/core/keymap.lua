vim.g.mapleader = " "

vim.keymap.set({"n","i"}, "<C-z>", "<Cmd>undo<CR>", { silent = true })

-- ------------------- 插入模式 ------------------
-- 把 esc 按键映射为 jk
keymap.set("i", "jk", "<ESC>")

-- -----------------------------------------------