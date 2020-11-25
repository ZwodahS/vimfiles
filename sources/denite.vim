autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
    nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q denite#do_map('quit')
    nnoremap <silent><buffer><expr> d denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> <ESC> denite#do_map('quit')
    nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> / denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <C-e> denite#do_map("do_action")
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
    imap <silent><buffer><expr> <ESC> denite#do_map("quit")
    imap <silent><buffer><expr> <C-c> denite#do_map("quit")
    imap <silent><buffer><expr> <CR> denite#do_map("do_action")
    call deoplete#custom#buffer_option('auto_complete', v:false)
    inoremap <silent><buffer> <C-j> <Esc>
        \:call denite#move_to_parent()<CR>
        \:call cursor(line('.')+1,0)<CR>
        \:call denite#move_to_filter()<CR>A
    inoremap <silent><buffer> <C-k> <Esc>
        \:call denite#move_to_parent()<CR>
        \:call cursor(line('.')-1,0)<CR>
        \:call denite#move_to_filter()<CR>A
endfunction

call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#option('default', 'prompt', '>')
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs', [
      \ '.git/',
      \ '__pycache__/*', '*.pyc', 'venv*/',
      \ 'bin/',
      \ 'node_modules/',
      \ '*.png'])

" Using CtrlP For now due to performance
nmap <C-p> :DeniteProjectDir -no-empty -split=floating -start-filter file/rec<CR>
nmap <leader>b :Denite -split=floating buffer<CR>
nmap <C-Space> :Denite -split=floating grep<CR>
nmap <leader>m :Denite -split=floating mark<CR>
nmap <leader>j :Denite -split=floating jump<CR>
nmap <C-t> :Denite -split=floating -start-filter tag<CR>
