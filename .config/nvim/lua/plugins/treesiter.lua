return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  opts = {
    ensure_installed = "maintained",  -- tylko maintained parsers
    highlight = { enable = true },
    indent = { enable = true },
    -- inne opcje jakie chcesz
  },
  config = true,  -- Lazy automatycznie zrobi setup(opts)
}
