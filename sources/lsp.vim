lua << EOF
local util = require 'lspconfig.util'
require'lspconfig'.haxe_language_server.setup{
    cmd = {"node", "/usr/local/bin/haxe-language-server/server.js"},
    init_options = {
      displayArguments = { '.lsp.hxml' },
    },
    root_dir = util.root_pattern '.lsp.hxml',
}
EOF
