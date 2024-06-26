-- leader 按键
vim.g.mapleader = "\\"

local keymap = vim.keymap

-- ------------------- 插入模式 ------------------
-- 把 esc 按键映射为 jk
keymap.set("i", "jk", "<ESC>")

-- -----------------------------------------------

-- --------------- 视觉模式 ---------------
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
keymap.set("v", "K", ":m '<-2<CR>gv=gv'")
-- ----------------------------------------

-- --------------- 正常模式 ---------------
-- 水平新增窗口
keymap.set("n", "<leader>sv", "<C-w>v")
-- 垂直新增窗口
keymap.set("n", "<leader>sh", "<C-w>s")
-- 关闭窗口
keymap.set("n", "<leader>sc", ":close<CR>")
-- 取消搜索高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- ----------------------------------------
