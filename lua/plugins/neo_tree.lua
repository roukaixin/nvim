return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<CR>", mode = { "n", "v" }, desc = "打开或关闭 neo-tree", }
    },
}