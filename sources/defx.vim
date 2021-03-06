autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> O
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('close_tree')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open_tree')
  nnoremap <silent><buffer><expr> L
  \ defx#do_action('open_tree', 'recursive')
  nnoremap <silent><buffer><expr> n
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> J
  \ defx#do_action('change_vim_cwd')
  nnoremap <silent><buffer><expr> s
  \ defx#do_action('toggle_select')
  vnoremap <silent><buffer><expr> s
  \ defx#do_action('toggle_select_visual')
endfunction
nmap <leader>f :Defx .<CR>
nmap <leader>F :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>
