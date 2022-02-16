"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Tabline configuration
" via https://github.com/rafcamlet/tabline-framework.nvim

lua << EOF
local colors = require("tokyonight.colors").setup(config)

local render = function(f)
    local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })

    f.add({ '  ' .. errors, fg = "#db4b4b" })
    f.add({ '  ' .. warnings, fg = "#e0af68"})
    f.add({ '  ' .. hints, fg = "#41a6b5"})
    f.add(' ')

    f.make_tabs(function(info)
        f.add(' (' .. info.index .. ') ')

        if info.filename then
            f.add(info.filename)
            f.add(info.modified and '[+]')
            f.add {
            ' ' .. f.icon(info.filename),
            }
        else
            f.add('[NO NAME]')
            f.add(info.modified and '[+]')
        end
            f.add(' ')
    end)
end
require('tabline_framework').setup({
  -- Render function is resposible for generating content of tabline
  -- This is the place where you do your magic!
  render = render,
})
EOF
