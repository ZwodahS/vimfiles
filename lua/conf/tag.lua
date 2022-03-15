local m = require('conf.mappings')

-- tag peek
-- https://github.com/semanticart/tag-peek.vim
m.nmap('<C-T>', ':call tag_peek#ShowTag()<CR>')
