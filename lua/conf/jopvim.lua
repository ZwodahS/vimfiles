local m = require('conf.mappings')

require('jopvim').setup({
  token_path = vim.fn.expand('~/.vim/.joplin_token')
})

m.nmap('<leader>j', '<cmd>lua require("jopvim.telescope").joplin_notes()<CR>')
m.nmap('<leader>k', '<cmd>lua require("jopvim.telescope").joplin_folders()<CR>')
