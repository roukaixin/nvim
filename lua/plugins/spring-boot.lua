return {
	"JavaHello/spring-boot.nvim",
	dependencies = {
		"ibhagwan/fzf-lua",
		"neovim/nvim-lspconfig",
	},
	ft = {
		"java",
		"yaml",
		"jproperties",
	},
	config = function()
		require("spring_boot").setup({})
		local lsp = "jdtls"
		local jdtls = function()
			local default_config = require("lspconfig.configs.jdtls").default_config
			local config = {}
			config.filetypes = default_config.filetypes
			table.insert(config.filetypes, "yaml")
			table.insert(config.filetypes, "jproperties")

			local lombok_jar = vim.fn.expand("$MASON/share/jdtls/lombok.jar")
			config.cmd = default_config.cmd
			table.insert(config.cmd, "--jvm-arg=-javaagent:" .. lombok_jar)

			config.init_options = default_config.init_options
			require("spring_boot").init_lsp_commands()
			config.init_options.bundles = require("spring_boot").java_extensions()
			return config
		end

		local mason_api = require("mason_api")
		mason_api.install_package(lsp)
		mason_api.install_package("vscode-spring-boot-tools")
		mason_api.setup(lsp, jdtls())
	end,
}
