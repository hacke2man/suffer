return {
  filter = function(bufnum)
    return vim.api.nvim_buf_is_loaded(bufnum) and vim.api.nvim_buf_is_loaded(bufnum)
  end,
  display = function(bufnum)
    return vim.api.nvim_buf_get_name(bufnum)
  end,
  seperator = ' '
}
