if has('nvim') == 1
    autocmd BufWritePost * Neomake
endif
