lua << EOF
local c = require("tokyonight.colors").setup({})
local util = require("tokyonight.util")
-- additional colors
local extensions = {
    ZDatetime = { fg = util.brighten(c.comment, 0.3), style = "bold"},
    ZStop = { fg = "#FF0000" },
    ZSpecial = { fg = c.red1 },
    CommentKeywordGreen = { fg = c.green },
    CommentKeywordBlue = { fg = c.blue, style = "italic" },
    CommentKeywordRed = { fg = c.red },
    CommentNearInvisible = { fg = util.lighten(c.comment, .2, c.bg) },
    Pmenu = { fg = "#394b70" },
}
util.syntax(extensions);
EOF
