return {
  -- https://github.com/nvim-neo-tree/neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["Z"] = "expand_all_subnodes",
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },

  -- https://github.com/keaising/im-select.nvim
  {
    "keaising/im-select.nvim",
    opts = {},
  },
}
