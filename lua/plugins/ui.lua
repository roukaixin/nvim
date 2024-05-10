return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        dependencies = {
            -- 删除标签(buf)
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
        event = { "BufWritePre" },
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
        event = "VeryLazy",
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'tokyonight'
                },
            })
        end
    },
    {
        -- 缩进显示
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        dependencies = {
            -- 彩虹括号
            "HiPhish/rainbow-delimiters.nvim",
        },
        main = "ibl",
        opts = {},
        config = function()
            require("ibl").setup()
        end
    },
    {
        -- 相同单词高亮
        "RRethy/vim-illuminate",
        event = "VeryLazy",
        config = function()
            require('illuminate').configure()
        end
    },
    {
        -- 显示 git 信息
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = true,
    },
}
