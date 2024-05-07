return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        vim.g.coc_global_extensions = {
            'coc-marketplace',
            'coc-db',
            'coc-git',
        }
    end,
    enable = false
}