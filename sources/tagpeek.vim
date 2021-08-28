command! -bang -nargs=1 -complete=tag TagPeek call tag_peek#ShowTag(<q-args>)
command! -bang -nargs=1 -complete=tag TP call tag_peek#ShowTag(<q-args>)
