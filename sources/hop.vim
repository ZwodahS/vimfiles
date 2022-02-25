" """" Easy Motion Plugin
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
nmap J :HopLineAC<CR>
nmap K :HopLineBC<CR>
nmap ,w :HopWordAC<CR>
nmap ,b :HopWordBC<CR>
" nmap / :HopPattern<CR>
"
"
lua << EOF
local c = require("tokyonight.colors").setup({})
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
EOF
