print("hello bindings")
-- dir view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>ha', mark.add_file)
vim.keymap.set('n', '<leader>hq', ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>hw', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>he', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>hr', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>ht', function() ui.nav_file(4) end)

-- undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

--fugitive
-- vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

--neogit
local neogit = require('neogit')
vim.keymap.set('n', '<leader>gs', neogit.open)

