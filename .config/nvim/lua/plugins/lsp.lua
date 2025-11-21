return {
	--	{
	--		"jglasovic/venv-lsp.nvim",
	--		config = function()
	--			require("venv-lsp").setup()
	--		end,
	--	},
	{
		"mrcjkb/rustaceanvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"black",
					"isort",
					"stylua",
					"gopls",
					"vtsls",
					"eslint",
					"buf_lsp",
					"asm_lsp",
					"ast_grep",
          "intelephense",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})
      lspconfig.intelephense.setup({
        filetypes = { "php" },
        capabilities = capabilities,
      })
			lspconfig.clangd.setup({
				filetypes = { "c", "c++" },
				capabilities = capabilities,
			})
			lspconfig.asm_lsp.setup({
				filetypes = { "assembly" },
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				filetypes = { "lua" },
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				filetypes = { "python" },
				capabilities = capabilities,
			})
			lspconfig.vtsls.setup({
				filetypes = { "javascript", "typescript" },
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				filetypes = { "javascript", "typescript" },
				capabilities = capabilities,
			})
			lspconfig.buf_ls.setup({
				filetypes = { "protobuf" },
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				filetypes = { "go" },
				capabilities = capabilities,
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
						},
						staticcheck = true,
						gofumpt = true,
					},
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, {})
		end,
	},
}
