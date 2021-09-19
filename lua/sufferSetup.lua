return function(setupInput)
  local setupDict = require"sufferDefaults"

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
  vim.g.SufferRun = require"sufferRun"
  vim.o.tabline = "%!SufferRun()"
end
