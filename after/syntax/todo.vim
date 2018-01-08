
if exists("b:current_syntax")
    finish
endif

syn match todo_normalpriority '\[ \].*'
syn match todo_highpriority '\[+\].*'
syn match todo_lowpriority '\[-\].*'
syn match todo_done '\[x\].*'
syn match todo_cancel '\[#\].*'
syn match todo_moved '\[@\].*'
syn match todo_question '\[?\].*'

syn match todo_title '^_.\{-}_$'
syn match todo_remark '^\s*#.*'
syn match todo_bullet '^\s*\*.*'
syn match todo_dot '^\s*\. .*'

hi def link todo_done Todo_Done
hi def link todo_lowpriority Todo_LowPriority
hi def link todo_normalpriority Todo_NormalPriority
hi def link todo_highprority Todo_HighPriority
hi def link todo_cancel Todo_Cancel
hi def link todo_moved Todo_Moved
hi def link todo_question Todo_Question
hi def link todo_title Todo_Title
hi def link todo_remark Todo_Remark
hi def link todo_bullet Todo_Bullet
hi def link todo_dot Todo_Dot

hi Todo_NormalPriority ctermfg=34
hi Todo_Done ctermfg=88 cterm=reverse
hi Todo_HighPriority ctermfg=48
hi Todo_LowPriority ctermfg=22
hi Todo_Moved ctermfg=39
hi Todo_Cancel ctermfg=8
hi Todo_Question ctermfg=12

hi Todo_Title ctermfg=13 cterm=underline
hi Todo_Remark ctermfg=45
hi Todo_Bullet ctermfg=7
hi Todo_Dot ctermfg=46
