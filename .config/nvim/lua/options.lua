vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.scrolloff = 10

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function (ev)
    local opts = { buffer = ev.buf, silent = true }

    opts.desc = "Show LSP object info"
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    opts.desc = "Show LSP type defenition"
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
    opts.desc = "Show LSP code actions"
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    opts.desc = "Show LSP line diagnostic"
    vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, opts)
    opts.desc = "Restart LSP"
    vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
  end
})

-- Code snipet from:
-- https://github.com/josean-dev/dev-environment-files/blob/main/.config/nvim/lua/josean/lsp.lua 57->68
-- [
local severity = vim.diagnostic.severity

vim.diagnostic.config({
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})
-- ]
