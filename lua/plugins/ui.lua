return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        dependencies = {
            "famiu/bufdelete.nvim",
        },
        keys = {
            { "<leader><tab>", "<cmd>BufferLineCycleNext<CR>", desc = "下一个标签" },
            { "<leader>c", "<cmd>Bdelete<CR>", desc = "关闭当前标签" },
        },
        config = function()
            require("bufferline").setup {
                options = {
                    diagnostics = "nvim_lsp",
                },
            }
        end,
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
        config = function()
            require('barbecue').setup {
                theme = 'tokyonight',
            }
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'tokyonight'
                },
            })
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = {},
        config = function()
            require("ibl").setup()
        end
    },
    {
        "RRethy/vim-illuminate",
        event = "VeryLazy",
        config = function()
            require('illuminate').configure()
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = true,
    },
}
