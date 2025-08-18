return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"python",
				"rust",
				"bash",
				"c",
				"cpp",
				"css",
				"gitignore",
				"html",
				"java",
				"nginx",
				"javascript",
				"typescript",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
