if vim.fn.has("nvim") == 1 then
  -- Transparent background
  vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
  vim.cmd([[highlight EndOfBuffer guibg=NONE ctermbg=NONE]])
end
