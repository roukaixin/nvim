return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    keys = {
        {
            "<C-h>", "<cmd>NvimTreeToggle<cr>", mode = "n", desc = "切换菜单树"
        }
    },
    dependencies = {
        -- 文件图标
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local HEIGHT_RATIO = 0.8
        local WIDTH_RATIO = 0.5
        require("nvim-tree").setup({
            view = {
                float = {
                    enable = true,
                    open_win_config = function()
                        local columns = vim.opt.columns:get()
                        local lines = vim.opt.lines:get()
                        local width = math.max(math.floor(columns * 0.5), 50)
                        local height = math.max(math.floor(lines * 0.5), 20)
                        local left = math.ceil((columns - width) * 0.5)
                        local top = math.ceil((lines - height) * 0.5 - 2)
                        return {
                            border = 'rounded',
                            relative = 'editor',
                            row = top,
                            col = left,
                            width = width,
                            height = height,
                        }
                    end,
                }
            },
        })
    end,
}
