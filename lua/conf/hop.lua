-- hop
-- https://github.com/phaazon/hop.nvim
local c = require("tokyonight.colors").setup({})
local m = require("conf.mappings");
local util = require("tokyonight.util")
-- override the color of the Hop provided by tokyonight
local override = {
    -- Hop
    HopNextKey = { fg = c.green, style = "bold" },
    HopNextKey1 = { fg = c.yellow, style = "bold" },
    HopNextKey2 = { fg = c.orange },
    HopUnmatched = { fg = c.dark2 },
}
util.syntax(override)
require('hop').setup({ keys = 'qwertasdfgpoiulkjhvcbnm' })

m.nmap('J', ':HopLineAC<CR>')
m.nmap('K', ':HopLineBC<CR>')
m.nmap(',w', ':HopWordAC<CR>')
m.nmap(',b', ':HopWordBC<CR>')
