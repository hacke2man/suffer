-- TODO: clean up code a bit

function Suffer_run()
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

local Suffer_defaults = {
  display = function(bufnum) return vim.api.nvim_buf_get_name(bufnum) end,
  seperator = ' ',
  line_start = ' ',
  line_end = ' '
}

local module = {}
module.setup = function(setupInput)
  local setupDict = Suffer_defaults

  if setupInput then
    if setupInput.display then setupDict.display = setupInput.display end
    if setupInput.seperator then setupDict.seperator = setupInput.seperator end
    if setupInput.line_start then setupDict.line_start = setupInput.line_start end
    if setupInput.line_end then setupDict.line_end = setupInput.line_end end
  end

  vim.g.SufferDisplay = setupDict.display
  vim.g.SufferFilter = setupDict.filter
  vim.g.SufferSeperator = setupDict.seperator
  vim.g.SufferStart = setupDict.line_start
  vim.g.SufferEnd = setupDict.line_end
  vim.g.SufferRun = Suffer_run
  vim.o.tabline = "%!SufferRun()"
end

return module
