if has('nvim') == 1
    autocmd BufWritePost * Neomake
endif
let g:neomake_haxe_haxe_args = ['.lint.hxml']
