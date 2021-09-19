return function(bufnum)
  return vim.api.nvim_buf_is_loaded(bufnum) and vim.api.nvim_buf_is_loaded(bufnum)
end
