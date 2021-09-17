return function()
  vim.g.SufferList = table.concat(vim.api.nvim_list_bufs(), ',')
  return vim.g.SufferList
end
