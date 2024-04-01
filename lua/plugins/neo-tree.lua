require("nvim-web-devicons").setup({
  override = {
    astro = {
      color = "#e44d26",
      icon = "",
      name = "Astro",
    },
  },
})

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
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
