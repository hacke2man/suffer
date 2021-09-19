-- TODO: clean up code a bit

function Suffer_run()
  local bufferTable = vim.api.nvim_list_bufs()
  local SufferList = {}

  for i, bufnum in ipairs(bufferTable) do
    if vim.fn.buflisted(bufnum) == 1 then
      table.insert(SufferList, vim.api.nvim_exec("echo suffer_display(".. bufnum .. ")", true))
    end
  end

  local line = table.concat(SufferList, vim.g.SufferSeperator)

  return vim.g.suffer_line_start .. line .. vim.g.suffer_line_end
end

local Suffer_defaults = {
  display = function(bufnum) return vim.api.nvim_buf_get_name(bufnum) end,
  seperator = ' ',
  line_start = ' ',
  line_end = ' '
}

local module = {}
module.setup = function(setup_input)
  local setup_table = Suffer_defaults

  if setup_input then
    if setup_input.display then setup_table.display = setup_input.display end
    if setup_input.seperator then setup_table.seperator = setup_input.seperator end
    if setup_input.line_start then setup_table.line_start = setup_input.line_start end
    if setup_input.line_end then setup_table.line_end = setup_input.line_end end
  end

  vim.g.suffer_display = setup_table.display
  vim.g.suffer_filter = setup_table.filter
  vim.g.suffer_seperator = setup_table.seperator
  vim.g.suffer_line_start = setup_table.line_start
  vim.g.suffer_line_end = setup_table.line_end
  vim.g.suffer_run = Suffer_run
  vim.o.tabline = "%!suffer_run()"
end

return module
