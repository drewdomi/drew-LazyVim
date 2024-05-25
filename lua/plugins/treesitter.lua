return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "angular",
        "astro",
        "dockerfile",
        "css",
        "fish",
        "gitignore",
        "html",
        "http",
        "javascript",
        "typescript",
        "scss",
        "sql",
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
