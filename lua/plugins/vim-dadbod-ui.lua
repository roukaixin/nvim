return {
    "tpope/vim-dadbod",
    config = function()
        vim.g.omni_sql_no_default_maps=1
        vim.g.db_ui_use_nerd_fonts=1
        vim.g.db_ui_force_echo_notifications=1
    end,
    enabled = false
}