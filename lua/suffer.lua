local module = {}
local line_start, line_end, separator, display

local function suffer_run()
  local bufnum_list = vim.api.nvim_list_bufs()
  local buffer_display_list = {}

  for _, bufnum in ipairs(bufnum_list) do
    if vim.fn.buflisted(bufnum) == 1 then
      table.insert(buffer_display_list, display(bufnum))
    end
  end

  return line_start .. table.concat(buffer_display_list, separator) .. line_end
end

local function def_display(bufnum) return vim.api.nvim_buf_get_name(bufnum) end

module.setup = function(setup_input)
  setup_input = setup_input or {}
  display = setup_input.display or def_display
  separator = setup_input.separator or ' '
  line_start = setup_input.line_start or ' '
  line_end = setup_input.line_end or ' '
  vim.g.suffer_run = suffer_run
  vim.o.tabline = "%!suffer_run()"
end

return module
