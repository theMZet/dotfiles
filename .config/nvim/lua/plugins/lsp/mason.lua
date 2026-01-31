return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "pyright",
      "svelte",
      "eslint",
      "ast_grep",
      "intelephense",
      "vtsls",
      "rust_analyzer",
    },
    automatic_enable = {
      exclude = {
        "rust_analyzer",
      }
    },
  },
  dependencies = {
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
    },
    "neovim/nvim-lspconfig",
  },
}
