return {
  display = function(bufnum) return vim.api.nvim_buf_get_name(bufnum) end,
  seperator = ' ',
  line_start = ' ',
  line_end = ' '
}
