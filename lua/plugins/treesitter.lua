return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "css",
        "fish",
        "gitignore",
        "http",
        "java",
        "scss",
        "sql",
        "svelte",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
