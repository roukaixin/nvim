return {
    "neoclide/coc.nvim",
    build = "yarn install --frozen-lockfile",
    config = function()
        vim.g.coc_global_extensions = {
            'coc-marketplace',
            'coc-db',
            'coc-git',
        }
    end
}