let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ ]

" prefer a local sessions over global sessions
let g:startify_session_dir = '.sessions'
nmap <C-S><C-S> :SSave! vim.session<CR>
nmap <C-S><C-L> :SLoad! vim.session<CR>

