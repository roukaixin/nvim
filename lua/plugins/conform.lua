-- 格式化插件
return {
	"stevearc/conform.nvim",
	config = function()
		local registry = require("mason-registry")

		local function install(name)
			local success, package = pcall(registry.get_package, name)
			if success and not package:is_installed() then
				package:install()
			end
		end

		local format_servers = {
			"stylua",
		}

		for _, value in ipairs(format_servers) do
			install(value)
		end

		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				rust = { "rustfmt" },
			},
		})
	end,
	keys = {
		{
			"<leader>lf",
			function()
				require("conform").format()
			end,
			desc = "格式化",
			silent = true,
		},
	},
}
