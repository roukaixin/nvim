-- mini 相关插件
return {
	{
        -- 通知插件
		"echasnovski/mini.notify",
		version = "*",
		opts = {},
		config = function(_, opts)
			local notify = require("mini.notify")
			notify.setup(opts)
			vim.notify = notify.make_notify()
		end,
	},
}
