"           DO WHAT THE **** YOU WANT TO PUBLIC LICENSE
"
"                   Version 2, December 2004
"
" Copyright (C) 2013 ZwodahS(ericnjf@gmail.com)
" zwodahs.wordpress.com
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

if exists("b:current_syntax")
    finish
endif

" Save compatibility and force vim compatibility (copied from quicktask)
let s:cpo_save = &cpo
set cpo&vim

hi ZDOC_Title ctermfg=10 cterm=underline
hi ZDOC_Bullet ctermfg=7
hi ZDOC_Priority ctermfg=87 cterm=bold
hi ZDOC_LowPriority ctermfg=52 ctermbg=1
hi ZDOC_Key ctermfg=11
hi ZDOC_Underline cterm=underline ctermfg=164
hi ZDOC_ThoughtProcess ctermfg=27
hi ZDOC_Todo_NotDone ctermfg=9
hi ZDOC_Todo_Done ctermfg=10
hi ZDOC_Todo_Semi ctermfg=142
hi ZDOC_Todo_Redirect ctermfg=39
hi ZDOC_Todo_Cancel ctermfg=8
hi ZDOC_Todo_Irrelevant ctermfg=2
hi ZDOC_Dot ctermfg=46
hi ZDOC_Anchor ctermfg=11

hi ZDOC_BlueText ctermfg=39
hi ZDOC_RedText ctermfg=9
hi ZDOC_YellowText ctermfg=11
hi ZDOC_GreenText ctermfg=40
hi ZDOC_WhiteText ctermfg=15
hi ZDOC_CyanText ctermfg=14
hi ZDOC_PinkText ctermfg=13
" ignore case for matching
syn case ignore

" == xxxxx ==
syn match zdoc_category '==.\{-}=='
" # xxxxx
syn match zdoc_bullet '^\s*#.*'
" .1 xxxxx
"contains=redtext contains=bluetext contains=greentext contains=yellowtext contains=whitetext contains=cyantext contains=pinktext
syn match zdoc_numbering '^\s*\.\d\+\s.*' contains=underline contains=key contains=bar contains=dot
" (1)
syn match zdoc_numbering2 '(\d\+)'
" + xxxxx
syn match zdoc_priority '^\s*+.*'
syn match zdoc_bluelist '^\s*>.*'
" ! xxxxx
syn match zdoc_lowpriority '^\s*!.*'
" {xxxx}
syn match zdoc_key '{.\{-}}'
" _xxxx_
syn match zdoc_title '^_.\{-}_$'
syn match zdoc_underline '__.\{-}__'
" |xxxx|
syn match zdoc_bar '|.\{-}|'
" ? xxxxx
syn match zdoc_thoughtprocess '^\s*?.\{-}?'
" [ ] [-] [X] [+] [!] [#]
syn match zdoc_todo_notdone '\[ \].*' contains=underline contains=bar
syn match zdoc_todo_semi '\[-\].*' contains=underline contains=bar
syn match zdoc_todo_done '\[X\].*' contains=underline contains=bar
syn match zdoc_todo_redirect '\[+\].*' contains=underline contains=bar
syn match zdoc_todo_cancel '\[!\].*' contains=underline contains=bar
syn match zdoc_todo_irrelevant '\[#\].*' contains=underline contains=bar
" .xxxxx.
syn match zdoc_dot '\.[^ ]\{-}\.'
" <xxxx>
syn match zdoc_anchor "<.\{-}>"
" coloring basic
syn match zdoc_bluetext ':b.\{-}:'
syn match zdoc_greentext ':g.\{-}:'
syn match zdoc_redtext ':r.\{-}:'
syn match zdoc_yellowtext ':y.\{-}:'
syn match zdoc_whitetext ':w.\{-}:'
syn match zdoc_cyantext ':c.\{-}:'
syn match zdoc_pinktext ':p.\{-}:'

hi def link zdoc_category ZDOC_Title
hi def link zdoc_bullet ZDOC_Bullet
hi def link zdoc_numbering ZDOC_Bullet
hi def link zdoc_numbering2 ZDOC_Bullet
hi def link zdoc_priority ZDOC_Priority
hi def link zdoc_lowpriority ZDOC_LowPriority
hi def link zdoc_key ZDOC_Key
hi def link zdoc_underline ZDOC_Underline
hi def link zdoc_title ZDOC_Underline
hi def link zdoc_bar ZDOC_Underline
hi def link zdoc_thoughtprocess ZDOC_ThoughtProcess
hi def link zdoc_todo_notdone ZDOC_Todo_NotDone
hi def link zdoc_todo_done ZDOC_Todo_Done
hi def link zdoc_todo_semi ZDOC_Todo_Semi
hi def link zdoc_todo_redirect ZDOC_Todo_Redirect
hi def link zdoc_todo_cancel ZDOC_Todo_Cancel
hi def link zdoc_todo_irrelevant ZDOC_Todo_Irrelevant
hi def link zdoc_dot ZDOC_Dot
hi def link zdoc_anchor ZDOC_Anchor
hi def link zdoc_bluetext ZDOC_BlueText
hi def link zdoc_bluelist ZDOC_BlueText
hi def link zdoc_greentext ZDOC_GreenText
hi def link zdoc_redtext ZDOC_RedText
hi def link zdoc_yellowtext ZDOC_YellowTxt
hi def link zdoc_whitetext ZDOC_WhiteTExt
hi def link zdoc_cyantext ZDOC_CyanText
hi def link zdoc_pinktext ZDOC_PinkText
