"""" CtrlP
" CtrlP ignore
set wildignore+=*.swp " ignore swp files
set wildignore+=*.zip,*.jar,*.tar " ignore archive file types
set wildignore+=venv,venv3,__pycache__,*.pyc " ignore python virtual env and compiled
set wildignore+=node_modules " ignore npm
set wildignore+=*.class " ignore java classes
" nmap :CtrlPClearCache
let g:ctrlp_switch_buffer=""

if executable('ag')
" Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
nnoremap <leader>p :CtrlP<CR>

let g:ctrlp_working_path_mode = 'ar'
let g:ctrlp_root_markers = ['.local', '.git']
