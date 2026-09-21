require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.keymap.set("n", "<leader>c", ":bdelete<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- LSP setup

local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("rust_analyzer", {
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy"
      }
    }
  }
})

vim.lsp.enable("rust_analyzer")

local formatting = vim.api.nvim_create_augroup("AutoFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs",
  group = formatting,
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

local indent_group = vim.api.nvim_create_augroup("CustomIndent", { clear = true })

-- 2 spaces
vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "javascript", "typescript", "html", "css", "json", "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end,
})

-- 4 spaces
vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "python", "rust", "cpp", "c" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

-- Hard tab
vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "go", "make" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = false
  end,
})
