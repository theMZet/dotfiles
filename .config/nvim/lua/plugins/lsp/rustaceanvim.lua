return {
  "mrcjkb/rustaceanvim",
  version = '^4',
  lazy = false,
  ["rust-analyzer"] = {
    cargo = {
      allFeatures = true,
    },
    checkOnSave = true,
  },
  config = function ()
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function (ev)
        vim.api.nvim_create_autocmd('InsertLeave', {
          pattern = '*.rs',  -- Tylko dla plików Rust
          callback = function()
            vim.cmd.RustLsp('flyCheck')
          end,
        })
      end
    })
  end
}
