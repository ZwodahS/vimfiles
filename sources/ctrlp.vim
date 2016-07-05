"""" CtrlP
" CtrlP ignore
set wildignore+=*.swp " ignore swp files
set wildignore+=*.zip,*.jar,*.tar " ignore archive file types
set wildignore+=venv,venv3,__pycache__,*.pyc " ignore python virtual env and compiled
set wildignore+=node_modules " ignore npm
set wildignore+=*.class " ignore java classes
" nmap :CtrlPClearCache
let g:ctrlp_switch_buffer=""

