"""" Window windowswap Plugin
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <C-W>y :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <C-W>p :call WindowSwap#DoWindowSwap()<CR>
