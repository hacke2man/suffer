return function()
  local bufferTable = vim.api.nvim_list_bufs()
  local SufferList = {}

  for i, bufnum in ipairs(bufferTable) do
    if vim.api.nvim_buf_is_loaded(bufnum) and vim.api.nvim_buf_is_loaded(bufnum) then
      if vim.api.nvim_buf_get_name(bufnum) or vim.api.nvim_buf_get_name(bufnum) == '' then
        table.insert(SufferList, vim.api.nvim_buf_get_name(bufnum))
      end
    end
  end

  return table.concat(SufferList, ' ')
end
