let g:neotags#python#order = 'mfc'
if executable('ag')
    let g:neotags_ctags_bin = 'ag -g "" '. getcwd() .' | ctags'
endif
