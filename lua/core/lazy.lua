local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazy_path) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazy_path,
    })
end
vim.opt.rtp:prepend(lazy_path)
local opts = {
    install = {
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { "tokyonight-storm" },
    },
}
require("lazy").setup("plugins", opts)