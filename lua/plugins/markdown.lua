--return {
--  "iamcco/markdown-preview.nvim",
--  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--  build = function()
--    vim.fn["mkdp#util#install"]()
--  end,
--  keys = {
--    -- ctrl + s
--    { "<C-s>", "<cmd>MarkdownPreview<cr>", mode = "n", desc = "打开预览" },
--    -- alt + s
--    { "<M-s>", "<cmd>MarkdownPreviewStop<cr>", mode = "n", desc = "关闭预览"}
--  },
--  config = function()
--    -- 使用 wyeb 打开预览文件
--    vim.g.mkdp_browser = 'vimb'
--    vim.g.mkdp_filetypes = {'markdown'}
--  end,
--  -- 加载特定的文件
--  ft = "markdown"
--}
