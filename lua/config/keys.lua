vim.keymap.set("n", "<leader>c", "<Cmd>bdelete<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", { desc = "Toggle neotree" })

vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, { desc = "Format buffer" })
vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, { desc = "Rename symbol" })
