return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true, timeout = 3000 },
    terminal = { enabled = true },
    lazygit = { enabled = true },
    words = { enabled = true },
    rename = { enabled = true },
  },
  keys = {
    { "<leader><space>", function() Snacks.picker.files() end, desc = "Find files" },
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>tt", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<leader>tg", function() Snacks.lazygit() end, desc = "Lazygit" },
  }
}
