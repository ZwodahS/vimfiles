"""" Easy Motion Plugin
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" bind these only if we don't have nvim, hence we need to switch most of hop
" to easymotion. EM is kept to have the / behavior as those in Hop arent' good
" enough
if has('nvim') == 0
    nmap J <Plug>(easymotion-j)
    nmap K <Plug>(easymotion-k)
    nmap , <Plug>(easymotion-prefix)
endif
let g:EasyMotion_keys = "qwertasdfgpoiulkjhvcbnm"
