return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_current",
      }
    }
  },
  {
    "Crysthamus/nvim-file-operations",
    dependencies = { "nvim-neo-tree/neo-tree.nvim" },
    opts = {}
  },
  {
    "s1n7ax/nvim-window-picker",
    version = "2.*",
    opts = {
      filter_rules = {
	include_current_win = false,
	autoselect_one = true,
	bo = {
	  filetype = { "neo-tree", "neo-tree-popup", "notify" },
	  buftype = { "terminal", "quickfix" },
	},
      },
    }
  }
}
