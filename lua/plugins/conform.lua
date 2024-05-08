return {
    'stevearc/conform.nvim',
    dependencies = {
        "zapling/mason-conform.nvim"
    },
    keys = {
        {
            "<leader>l",
            function()
                require("conform").format()
            end,
            mode = { "n", "i" },
            desc = "格式化代码"
        },
    },
    config = function()
        require("mason-conform").setup()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                c = { "clang_format" },
            }
        })
    end
}