return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      group_empty_dirs = false,
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
        },
        never_show = { ".git" },
      },
    },
  },
}
