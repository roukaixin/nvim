-- 代码补全
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline"
    },
    config = function()
        local cmp = require('cmp')
        require("luasnip.loaders.from_vscode").lazy_load()
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                -- 下一个
                ['<Tab>'] = cmp.mapping.select_next_item(),
                -- 上一个
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                -- 确认 回车键
                ['<CR>'] = cmp.mapping.confirm({
                    select = true ,
                    behavior = cmp.ConfirmBehavior.Replace
                }),
            }),
            sources = cmp.config.sources(
                    {
                        { name = 'nvim_lsp' },
                        { name = 'path' },
                        { name = 'luasnip' },
                    },
                    {
                        { name = 'buffer' },
                    }
            )
        })
    end
}