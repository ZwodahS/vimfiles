" :help deoplete-options
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_delay', 50)
call deoplete#custom#option('max_list', 15)
call deoplete#custom#option('smart_case', v:true)
let g:python3_host_prog=$vim_home."/venv3/bin/python"
autocmd FileType markdown call deoplete#custom#buffer_option('auto_complete', v:false)
