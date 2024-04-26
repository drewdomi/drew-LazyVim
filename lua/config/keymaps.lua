-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = {
  noremap = true,
  silent = true,
}

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- keymap.set("i", "ii", "<Esc>")

-- code_runner
keymap.set("n", "<Leader>r", ":RunCode<Return>", { desc = "Code Runner" })
keymap.set("n", "<Leader>rd", ":RunClose<Return>", { desc = "Close Code Runner" })

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- ThePrimeagen/refactoring.nvim
vim.keymap.set("x", "<leader>re", function()
  require("refactoring").refactor("Extract Function")
end)
vim.keymap.set("x", "<leader>rf", function()
  require("refactoring").refactor("Extract Function To File")
end)
-- Extract function supports only visual mode
vim.keymap.set("x", "<leader>rv", function()
  require("refactoring").refactor("Extract Variable")
end)
-- Extract variable supports only visual mode
vim.keymap.set("n", "<leader>rI", function()
  require("refactoring").refactor("Inline Function")
end)
-- Inline func supports only normal
vim.keymap.set({ "n", "x" }, "<leader>ri", function()
  require("refactoring").refactor("Inline Variable")
end)
-- Inline var supports both normal and visual mode

vim.keymap.set("n", "<leader>rb", function()
  require("refactoring").refactor("Extract Block")
end)
vim.keymap.set("n", "<leader>rbf", function()
  require("refactoring").refactor("Extract Block To File")
end)
-- Extract block supports only normal mode
