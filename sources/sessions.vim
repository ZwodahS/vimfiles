function! s:saveSession()
    mks! .session
    echo "Session Saved!"
endfunction
command! SaveSession call s:saveSession()

function! s:loadSession()
    source .session
    echo "Session Loaded!"
endfunction
command! LoadSession call s:loadSession()
