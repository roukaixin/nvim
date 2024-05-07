return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()
        local lsp_config = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        lsp_config.clangd.setup({
            capabilities = capabilities
        })
    end
}