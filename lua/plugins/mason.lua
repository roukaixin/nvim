-- lsp
return {
	"mason-org/mason.nvim",
	-- BufReadPost: 编辑存在文件，BufNewFile: 编辑一个不存在的文件
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	dependencies = {
		"neovim/nvim-lspconfig",
		"mason-org/mason-lspconfig.nvim",
	},
	opts = {
		mason = {},
		["mason-lspconfig"] = {
			automatic_enable = true,
		},
		formatter = {
			lua = "stylua",
			yaml = "yamlfmt",
		},
		lsp = {
			["lua-language-server"] = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			},
			["rust-analyzer"] = {
				on_attach = function(_, bufnr)
					vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
				end,
			},
			["dockerfile-language-server"] = {},
			["docker-compose-language-service"] = {
				filetypes = {
					"yaml",
					"yml",
					"yaml.docker-compose",
				},
			},
			["sqls"] = {},
		},
	},
	config = function(_, opts)
		require("mason").setup(opts.mason)
		local registry = require("mason-registry")

		local function install_package(pkg_name)
			local success, pkg = pcall(registry.get_package, pkg_name)
			if success and not pkg:is_installed() then
				pkg:install()
			end
		end

		for _, formatter in pairs(opts.formatter) do
			install_package(formatter)
		end

		local function setup(pkg_name, config)
			install_package(pkg_name)
			local lsp_name = require("mason-lspconfig").get_mappings().package_to_lspconfig[pkg_name]
			config.capabilities = require("blink.cmp").get_lsp_capabilities()
			config.on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			vim.lsp.config(lsp_name, config)
		end

		for server, config in pairs(opts.lsp) do
			setup(server, config)
		end

		require("mason-lspconfig").setup(opts["mason-lspconfig"])
		vim.lsp.inlay_hint.enable()
		vim.diagnostic.config({
			virtual_text = true,
			update_in_insert = true,
		})
	end,
}
