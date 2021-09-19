return {
  filter = function(bufnum)
    return vim.fn.buflisted(bufnum) == 1
  end,
  display = function(bufnum)
    return vim.api.nvim_buf_get_name(bufnum)
  end,
  seperator = ' '
}
