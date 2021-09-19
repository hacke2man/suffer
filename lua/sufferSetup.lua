return function(setupDict)
  if setupDict then
    if setupDict.display then
      vim.g.SufferDisplay = setupDict.display
    else
      vim.g.SufferDisplay = require"sufferDisplay"
    end

    if setupDict.filter then
      vim.g.SufferDisplay = setupDict.filter
    else
      vim.g.SufferFilter = require"sufferFilter"
    end

    if setupDict.seperator then
      vim.g.SufferSeperator = setupDict.seperator
    else
      vim.g.SufferSeperator = ' '
    end
    else
      vim.g.SufferDisplay = require"sufferDisplay"
      vim.g.SufferFilter = require"sufferFilter"
      vim.g.SufferSeperator = ' '
  end

  vim.g.SufferRun = require"sufferRun"
  vim.o.tabline = "%!SufferRun()"
end
