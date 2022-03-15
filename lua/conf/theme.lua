----- Colorscheme
local c = require("tokyonight.colors").setup({})
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.cmd('colorscheme tokyonight')

local util = require("tokyonight.util")
-- additional colors
local extensions = {
    ZDatetime = { fg = util.brighten(c.comment, 0.3), style = "bold"},
    ZStop = { fg = "#FF0000" },
    ZSpecial = { fg = c.red1 },
    ZCommentSpecial1 = { fg = util.darken(c.red1,.8) , style = "italic" },
    ZCommentSpecial2 = { fg = util.darken(c.green,.8) , style = "italic" },
    CommentNearInvisible = { fg = util.lighten(c.comment, .2, c.bg) },
    Pmenu = { fg = "#394b70" },
}
util.syntax(extensions);
