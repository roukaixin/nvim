return {
    "CRAG666/code_runner.nvim",
    config = true,
    keys = {
        { '<leader>r', '<cmd>RunCode<CR>', mode = { 'n' }, desc = "运行代码", noremap = true, silent = false },
        { '<leader>rf', '<cmd>RunFile<CR>', mode = { 'n' }, desc = "运行当前文件", noremap = true, silent = false },
        { '<leader>rft', '<cmd>RunFile tab<CR>', mode = { 'n' }, desc = "运行当前文件（新标签）", noremap = true, silent = false },
        { '<leader>rp', '<cmd>RunProject<CR>', mode = { 'n' }, desc = "运行当前项目", noremap = true, silent = false },
        { '<leader>rc', '<cmd>RunClose<CR>', mode = { 'n' }, desc = "关闭运行器", noremap = true, silent = false },
    }
}