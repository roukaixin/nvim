return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    keys = {
        { '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "列出当前工作目录中的文件，尊重 .gitignore" },
        { '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>",  desc = "在当前工作目录中搜索字符串并在键入时实时获取结果，尊重 .gitignore。 （需要 ripgrep）" },
        { '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "列出当前 neovim 实例中打开的缓冲区" },
        { '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", desc = "列出可用的帮助标签并打开一个新窗口" },
    },
    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
        require('telescope').load_extension('fzf')
    end
}