local m = require('conf.mappings')
------ Unbind stuffs
m.nmap('Q', '<NOP>')
m.nmap('<C-G>', '<NOP>')
m.nmap('<C-H>', '<NOP>')
m.imap('<C-H>', '<NOP>')
m.nmap('<C-Q>', '<NOP>')
m.nmap('<C-T>', '<NOP>')

------ Options
vim.opt.listchars = { eol = '↵', tab = '¬ ' }
vim.opt.wrap = false
vim.opt.directory = vim.g.vim_home .. "/.swp"
vim.opt.colorcolumn = "119,120"
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.equalalways = false
------ various key mappings
-- set the character for EOL and tabs
m.nmap('<leader>l', ':set list!<CR>')
-- line number and relative number switching
m.nmap('<leader>nn', ':set number!<CR>')
m.nmap('<leader>nr', ':set relativenumber!<CR>')
m.vmap('<C-I>', '<ESC>:set relativenumber!<CR>gv')
-- clear search
m.nmap('<leader>gc', ':let @/= ""<CR>')
-- toggle wrap
m.nmap('<leader>w', ':set wrap!<CR>')
-- Toggle paste mode, (aka turn off smart indent)
m.nmap('<leader>i', ':set paste!<CR>')
---- Folding remap
-- - to fold/close +/= to open
-- map C-j C-k for moving by fold
m.xmap('-', 'zf')
m.nmap('-', 'zc')
m.nmap('=', 'zo')
m.nmap('+', 'zO')
m.nmap('<C-j>', 'zj')
m.nmap('<C-k>', 'zk')
-- Fold method forcing
m.nmap('zs', ':setlocal foldmethod=syntax<CR>')

---- Global Clipboard
m.vmap('gy', '"+y')
m.nmap('gp', '"+p')
m.vmap('gp', '"+p')

---- Tabs
-- open current buffer in new tab
m.nmap('<C-W>t', ':tab split<CR>')
-- close all tab except active
m.nmap('<C-W>r', ':tabonly<CR>')
-- close current active
m.nmap('<C-W><C-R>', ':tabclose<CR>')
m.nmap('<leader>tt2', ':set softtabstop=2<CR>:set tabstop=2<CR>:set shiftwidth=2<CR>:echo "Tab set to 2"<CR>')
m.nmap('<leader>tt4', ':set softtabstop=4<CR>:set tabstop=4<CR>:set shiftwidth=4<CR>:echo "Tab set to 4"<CR>')

---- Windows
-- resize splits
m.nmap('<Up>', ':resize +3<CR>')
m.nmap('<Down>', ':resize -3<CR>')
m.nmap('<Left>', ':vertical resize -3<CR>')
m.nmap('<Right>', ':vertical resize +3<CR>')
-- make it width 160, i.e. the main window
m.nmap('<C-W>-', ':vertical resize 160<CR>')

---- QOL
m.nmap('<Enter>', ':')
m.nmap('!', ':!')
-- paste while in insert mode
m.imap('<C-E><C-I>', '<ESC>pa')

---- Whitespace removal
m.nmap('<leader><Space>', ':FixWhitespace<CR>')
m.xmap('<leader><Space>', ':FixWhitespace<CR>')

---- Date generation
m.imap('<C-e><C-e>', '<C-R>=expand("%:t:r")<CR>')
m.imap('<C-e><C-d>', '<C-R>=strftime("%d %b %Y")<CR>')
m.imap('<C-e><C-t>', '<C-R>=strftime("%a %H:%M:%S %d %b %Y")<CR>')
m.imap('<C-e><C-j>', '<C-R>=strftime("%d/%m/%Y %H:%M")<CR>')
