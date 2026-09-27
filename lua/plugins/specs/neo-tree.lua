return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        hijack_netrw_behavior = "open_default",
        use_libuv_file_watcher = true,
      },
      window = {
        width = 30,
        mappings = {
          ["c"] = "copy_to_clipboard",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
        },
      },
    })
  end,
}
