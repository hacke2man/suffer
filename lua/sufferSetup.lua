return function()
  vim.g.sufferval = 0;
  vim.g.SufferDisp = require"suffer".display
  vim.o.showtabline = 2
  vim.o.tabline = "%!SufferDisp()"
end
