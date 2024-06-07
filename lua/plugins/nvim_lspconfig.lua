-- lsp
return {
    "neovim/nvim-lspconfig",
    cmd = { "Mason", "Neoconf" },
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "folke/neoconf.nvim",
        "folke/neodev.nvim",
        "nvimdev/lspsaga.nvim",
        {
            "j-hui/fidget.nvim",
            opts = { },
        }
    },
    config = function()
        local lsp_config = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
                    },
                },
            },
            clangd = {},
            rust_analyzer = {}
        }

        local on_attach = function(_, buffer)
            vim.keymap.set('n', '<leader>p', ':Lspsaga hover_doc', { buffer = buffer })
        end

        require("neoconf").setup()
        require("neodev").setup()
        require("fidget").setup()
        require("lspsaga").setup()
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