require("config.options")
require("config.lazy")
local neogit = require("neogit")
neogit.setup {} 
require("config.kanagawa") 

vim.cmd("colorscheme kanagawa")

require("config.bindings")

