function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
    map('n', shortcut, command)
end

function imap(shortcut, command)
    map('i', shortcut, command)
end

function vmap(shortcut, command)
    map('v', shortcut, command)
end

function xmap(shortcut, command)
    map('x', shortcut, command)
end
local M = {}
M.nmap = nmap
M.imap = imap
M.vmap = vmap
M.xmap = xmap
return M
