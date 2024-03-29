vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.*" },
  desc = "Save view (folds), when closing file",
  command = "mkview",
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.*" },
  desc = "Load view (folds), when opening file",
  command = "silent! loadview",
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.astro", "*.html", "*.css", "*.scss", "*.sass", "*.tsx", "*.jsx", "*.js", "*.mjs" },
  desc = "Enable nvim-colorizer on load pattern files",
  command = "ColorizerToggle",
})
