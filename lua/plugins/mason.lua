-- lsp
return {
	"mason-org/mason.nvim",
	-- BufReadPost: 编辑存在文件，BufNewFile: 编辑一个不存在的文件
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	dependencies = {
		"neovim/nvim-lspconfig",
		"mason-org/mason-lspconfig.nvim",
		"JavaHello/spring-boot.nvim",
	},
	opts = {
		ui = {
			border = "rounded",
		},
		registries = {
			"lua:registry",
			-- "github:indika-dev/personal-mason-registry",
			"github:mason-org/mason-registry",
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		require("mason-lspconfig").setup({
			automatic_enable = false,
		})
		require("spring_boot").setup({})

		local registry = require("mason-registry")

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

		local mason_pkg = {
			formatter = {
				-- lua
				"stylua",
				-- yaml
				"yamlfmt",
				-- c / c++
				"clang-format",
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
				-- rust
				["rust-analyzer"] = {},
				-- docker
				["dockerfile-language-server"] = {},
				["docker-compose-language-service"] = {},
				-- java
				["jdtls"] = jdtls(),
				-- vue
				["vue-language-server"] = {
					cmd = { "vue-language-server", "--stdio" },
					init_options = {
						vue = {
							hybridMode = true,
						},
					},
				},
				["vtsls"] = {
					filetypes = {
						"javascript",
						"javascriptreact",
						"javascript.jsx",
						"typescript",
						"typescriptreact",
						"typescript.tsx",
						"vue",
					},
				},
				-- c / c++
				["clangd"] = {},
			},
			dap = {},
			-- 代码检查器
			linter = {
				-- sql
				"sqlfluff",
				-- docker
				"hadolint",
				-- ts、js
				"eslint_d",
			},
			other = {
				-- spring boot
				"vscode-spring-boot-tools",
			},
		}

		local function install_package(pkg_name)
			local success, pkg = pcall(registry.get_package, pkg_name)
			if success and not pkg:is_installed() then
				pkg:install()
			end
		end

		local function setup(pkg_name, config)
			install_package(pkg_name)
			local lsp_name = require("mason-lspconfig").get_mappings().package_to_lspconfig[pkg_name] or pkg_name

			config.on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end

			vim.lsp.config(lsp_name, config)
			vim.lsp.enable(lsp_name)
		end

		registry.refresh(function()
			for pkg_type, type_table in pairs(mason_pkg) do
				if pkg_type == "lsp" then
					for lsp_pkg, config in pairs(type_table) do
						setup(lsp_pkg, config)
					end
				else
					for _, pkg_name in pairs(type_table) do
						install_package(pkg_name)
					end
				end
			end
		end)

		-- vim.lsp.inlay_hint.enable()
		vim.diagnostic.config({
			virtual_text = true,
			update_in_insert = true,
		})
	end,
}
