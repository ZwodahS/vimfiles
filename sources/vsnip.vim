let g:vsnip_snippet_dir = $vim_home."/vsnip"
imap <expr> <C-t> vsnip#expandable() ? '<Plug>(vsnip-expand)'         : vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)': '<C-t>'
smap <expr> <C-t> vsnip#expandable() ? '<Plug>(vsnip-expand)'         : vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)': '<C-t>'
imap <expr> <C-S-t> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-S-t>'
smap <expr> <C-S-t> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<C-S-t>'
