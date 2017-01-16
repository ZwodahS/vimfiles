"autocmd BufWritePre *.go silent :GoImports
nnoremap <silent> <leader>gi :GoImports<CR>
nnoremap <silent> zz :setlocal foldmethod=syntax<CR>:set foldmethod=manual<CR>
