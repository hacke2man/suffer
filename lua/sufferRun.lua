return function()
  local bufferTable = vim.api.nvim_list_bufs()
  local SufferList = {}

  for i, bufnum in ipairs(bufferTable) do
    if vim.fn.buflisted(bufnum) == 1 then
      table.insert(SufferList, vim.api.nvim_exec("echo SufferDisplay(".. bufnum .. ")", true))
    end
  end

  local line = table.concat(SufferList, vim.g.SufferSeperator)

  return vim.g.SufferStart .. line .. vim.g.SufferEnd
end
