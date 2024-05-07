-- lsp
return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local lsp_config = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local servers = {
            clangd = {},
            rust_analyzer = {}
        }

        local on_attach = function()

        end

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers),
        })

        for server, config in pairs(servers) do
            lsp_config[server].setup({
                vim.tbl_deep_extend("keep",
                        {
                            on_attach = on_attach,
                            capabilities = capabilities
                        },
                        config
                )
            })
        end
    end
}