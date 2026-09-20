return {
  { 
    "nvim-mini/mini.pairs",
    event = "InsertEnter",
    opts = {}
  },
  {
    "nvim-mini/mini.comment",
    opts = {
      mappings = {
        comment_line = "<leader>/"
      },
    }
  },
  { "nvim-mini/mini.basics", opts = {} },
--   -- { "nvim-mini/mini.statusline", opts = {} },
--   -- { "nvim-mini/mini.tabline", opts = {} },
  { "nvim-mini/mini.cmdline", opts = {} },
--   -- { "nvim-mini/mini.notify", opts = {} },
  { "nvim-mini/mini.icons", opts = {} },
}
