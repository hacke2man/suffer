return function(setupInput)
  local setupDict = require"sufferDefaults"

  if setupInput then
    if setupInput.display then setupDict.display = setupInput.display end
    if setupInput.filter then setupDict.filter = setupInput.filter end
    if setupInput.seperator then setupDict.seperator = setupInput.seperator end
  end

  vim.g.SufferDisplay = setupDict.display
  vim.g.SufferFilter = setupDict.filter
  vim.g.SufferSeperator = setupDict.seperator
  vim.g.SufferRun = require"sufferRun"
  vim.o.tabline = "%!SufferRun()"
end
