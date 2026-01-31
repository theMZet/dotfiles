return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { -- List of parsers you want installed, feel free to add more and push changes
        "angular",
        "bash",
        "c",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "glsl",
        "gpg",
        "html",
        "java",
        "javadoc",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "nginx",
        "php",
        "proto",
        "python",
        "regex",
        "rust",
        "scss",
        "svelte",
        "tmux",
        "toml",
        "typescript",
        "xml",
        "yaml",
      },
      ignore_install = {}, -- List of parsers to ignore installing
      highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "help" }, -- list of language that will be disabled
      },
    }
	end,
}
