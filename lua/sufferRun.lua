return function()
  local bufferTable = vim.api.nvim_list_bufs()
  local SufferList = {}

  for i, bufnum in ipairs(bufferTable) do
    if vim.api.nvim_exec("echo SufferFilter(".. bufnum .. ")", true) == "v:true" then
      table.insert(SufferList, vim.api.nvim_exec("echo SufferDisplay(".. bufnum .. ")", true))
    end
  end

  return table.concat(SufferList, vim.g.SufferSeperator)
end
