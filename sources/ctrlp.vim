"""" CtrlP
" CtrlP ignore
set wildignore+=*.swp " ignore swp files
set wildignore+=*.zip,*.jar,*.tar " ignore archive file types
set wildignore+=venv,venv3,__pycache__,*.pyc " ignore python virtual env and compiled
set wildignore+=node_modules " ignore npm
set wildignore+=*.class " ignore java classes
" nmap :CtrlPClearCache
let g:ctrlp_switch_buffer=""
let g:ctrlp_map=''

if executable('ag')
" Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor --follow -g ""'
endif
if has('nvim') != 0
    nnoremap <leader>p :CtrlP .<CR>
    nnoremap <C-S-P> :CtrlP<CR>
else
    nnoremap <C-S-P> :CtrlP<CR>
    nnoremap <C-P> :CtrlP .<CR>
endif

let g:ctrlp_working_path_mode = 'c'
" let g:ctrlp_root_markers = ['.local', '.git']
