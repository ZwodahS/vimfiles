" :help deoplete-options
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_delay', 150)
call deoplete#custom#option('max_list', 15)
call deoplete#custom#option('smart_case', v:true)
autocmd FileType markdown call deoplete#custom#buffer_option('auto_complete', v:false)
call deoplete#custom#option('sources', { '_': ['around', 'buffer', 'tag'] })
