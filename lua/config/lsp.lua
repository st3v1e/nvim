-- local bufnr = vim.api.nvim_get_current_buf()
-- vim.keymap.set(
--   "n",
--   "K",
--   function()
--     vim.cmd.RustLsp({ "hover", "actions" })
--   end,
--   { silent = true, buffer = bufnr }
-- )

vim.lsp.enable("lua_ls")
-- vim.lsp.enable("stylua")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
