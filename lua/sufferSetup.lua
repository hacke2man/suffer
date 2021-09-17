return function()
  vim.g.sufferval = 0;
  vim.cmd [[
    function! SufferDisp()
      let SufferMod = luaeval('require"suffer".display')
      return SufferMod()
    endfunction
  ]]
  vim.o.showtabline=2
  vim.o.tabline="%!SufferDisp()"
end
