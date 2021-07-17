let g:vsnip_snippet_dir = $vim_home."/vsnip"
imap <expr> <C-t> vsnip#expandable() ? '<Plug>(vsnip-expand)'         : '<C-t>'
smap <expr> <C-t> vsnip#expandable() ? '<Plug>(vsnip-expand)'         : '<C-t>'
