return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  keys = {
    -- ctrl + s
    { "<C-s>", "<cmd>MarkdownPreview<cr>",mode = "n", desc = "打开预览" },
    -- alt + s
    { "<M-s>", "<cmd>MarkdownPreviewStop<cr>", mode = "n", desc = "关闭预览"}
  },
  config = function()
    -- 使用 wyeb 打开预览文件
    vim.g.mkdp_browser = 'wyeb'
    vim.g.mkdp_filetypes = {'markdown'}
  end,
  -- 加载特定的文件
  ft = "markdown"
}
