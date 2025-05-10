vim.g.mapleader = " "

vim.keymap.set({ "n", "i" }, "<C-z>", "<Cmd>undo<CR>", { silent = true })
vim.keymap.set({ "n", "i" }, "<C-s>", "<Cmd>write<CR>", { silent = true })

-- ------------------- 插入模式 ------------------
-- 把 esc 按键映射为 jk
vim.keymap.set("i", "jk", "<ESC>")

-- -----------------------------------------------
