nnoremap <C-S> :mks! .session<CR> :echo "Session Saved!"<CR>
function! s:loadSession()
    source .session
    echo "Session Loaded!"
endfunction
command LoadSession call s:loadSession()
