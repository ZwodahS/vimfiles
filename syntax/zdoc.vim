
"           DO WHAT THE **** YOU WANT TO PUBLIC LICENSE
"
"                   Version 2, December 2004
"
" Copyright (C) 2013- ZwodahS(ericnjf@gmail.com)
" zwodahs.me
"
" Everyone is permitted to copy and distribute verbatim or modified
" copies of this license document, and changing it is allowed as long
" as the name is changed.
"
"           DO WHAT THE **** YOU WANT TO PUBLIC LICENSE
"   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
"
"  0. You just DO WHAT THE **** YOU WANT TO.
"
" This program is free software. It comes without any warranty, to
" the extent permitted by applicable law. You can redistribute it
" and/or modify it under the terms of the Do What The Fuck You Want
" To Public License, Version 2, as published by Sam Hocevar. See
" http://sam.zoy.org/wtfpl/COPYING for more details.
"
"
if exists('b:current_syntax')
    finish
endif

syn match zdoc_title "\v^\s*#.*"
syn match zdoc_bullet '\v^\s*\*'
syn match zdoc_question '\v^\s*\?.*'
syn match zdoc_exclaimation '\v^\s*\!.*'
syn match zdoc_dot '\v^\s*\.[^\.]*\.\s*$'

syn match zdoc_checkbox_undone "\v\[ ][^\[]*"
syn match zdoc_checkbox_highpriority "\v\+\[ ][^\[]*"
syn match zdoc_checkbox_done "\v.?\[[Xx]][^\[]*"
syn match zdoc_checkbox_lowpriority "\v-\[ ][^\[]*"
syn match zdoc_checkbox_cancel "\v\[][^\[]*"
syn match zdoc_checkbox_moved "\v.?\[-][^\[]*"

hi def link zdoc_checkbox_highpriority ZDocCheckboxHighPriority
hi def link zdoc_checkbox_undone ZDocCheckboxUndone
hi def link zdoc_checkbox_done ZDocCheckboxDone
hi def link zdoc_checkbox_cancel ZDocCheckboxCancel
hi def link zdoc_checkbox_lowpriority ZDocCheckboxLowPriority
hi def link zdoc_checkbox_moved ZDocCheckboxMoved

hi def link zdoc_title ZDocTitle
hi def link zdoc_bullet ZDocBullet
hi def link zdoc_question ZDocQuestion
hi def link zdoc_exclaimation ZDocExclaimation
hi def link zdoc_dot ZDocDotTitle

"""""" Actual colors
hi ZDocTestRegex ctermbg=15 ctermfg=0

hi ZDocCheckboxDone ctermfg=46
hi ZDocCheckboxHighPriority ctermfg=184
hi ZDocCheckboxUndone ctermfg=124
hi ZDocCheckboxLowPriority ctermfg=126
hi ZDocCheckboxMoved ctermfg=21
hi ZDocCheckboxCancel ctermfg=88 cterm=reverse

hi ZDocTitle ctermfg=178
hi ZDocBullet ctermfg=11
hi ZDocQuestion ctermfg=45
hi ZDocDotTitle ctermfg=12
hi ZDocExclaimation ctermfg=9
