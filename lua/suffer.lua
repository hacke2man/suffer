-- we can print to tabline
-- we know supplyed function is called alot

---------------------------------
-- main goal UGLY but HACKABLE --
---------------------------------

-- TODO: define a state
  -- list buffers
  -- order buffer
  -- find out whats going on with each buffer ie: not written? lsp error?

-- TODO: display state
  -- print buffers
  -- print attribs

-- TODO: modify state
  -- keep track of changes

local module = {}
module.display = require'sufferDisplay'
module.setup = require'sufferSetup'
return module
