" """" Easy Motion Plugin
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
nmap J :HopLineAC<CR>
nmap K :HopLineBC<CR>
nmap ,w :HopWordAC<CR>
nmap ,b :HopWordBC<CR>
" nmap / :HopPattern<CR>
"
"
lua << EOF
require'hop'.setup { keys = 'qwertasdfgpoiulkjhvcbnm' }
EOF
