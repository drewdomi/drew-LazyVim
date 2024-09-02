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

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.md", "*.mdx" },
  desc = "Enable deadcolumn when enter in a Markdown file",
  command = "setlocal colorcolumn=120",
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
--     require("go.format").goimport()
--   end,
-- })
