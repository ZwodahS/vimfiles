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

hi Title ctermfg=10 cterm=underline
hi Bullet ctermfg=7
hi Priority ctermfg=87 cterm=bold
hi LowPriority ctermfg=52 ctermbg=1
hi Key ctermfg=11
hi Underline cterm=underline ctermfg=164
hi ThoughtProcess ctermfg=27
hi Todo_NotDone ctermfg=9
hi Todo_Done ctermfg=10
hi Todo_Semi ctermfg=142
hi Todo_Redirect ctermfg=39
hi Todo_Cancel ctermfg=8
hi Todo_Irrelevant ctermfg=2
hi Dot ctermfg=46
hi Anchor ctermfg=11

hi BlueText ctermfg=39
hi RedText ctermfg=9
hi YellowText ctermfg=11
hi GreenText ctermfg=40
hi WhiteText ctermfg=15
hi CyanText ctermfg=14
hi PinkText ctermfg=13
" ignore case for matching
syn case ignore

" == xxxxx ==
syn match category '==.\{-}=='
" # xxxxx
syn match bullet '^\s*#.*'
" .1 xxxxx
"contains=redtext contains=bluetext contains=greentext contains=yellowtext contains=whitetext contains=cyantext contains=pinktext
syn match numbering '^\s*\.\d\+\s.*' contains=underline contains=key contains=bar contains=dot
" (1)
syn match numbering2 '(\d\+)'
" + xxxxx
syn match priority '^\s*+.*'
syn match bluelist '^\s*>.*'
" ! xxxxx
syn match lowpriority '^\s*!.*'
" {xxxx}
syn match key '{.\{-}}'
" _xxxx_
syn match title '^_.\{-}_$'
syn match underline '__.\{-}__'
" |xxxx|
syn match bar '|.\{-}|'
" ? xxxxx
syn match thoughtprocess '^\s*?.\{-}?'
" [ ] [-] [X] [+] [!] [#]
syn match todo_notdone '\[ \].*' contains=underline contains=bar
syn match todo_semi '\[-\].*' contains=underline contains=bar
syn match todo_done '\[X\].*' contains=underline contains=bar
syn match todo_redirect '\[+\].*' contains=underline contains=bar
syn match todo_cancel '\[!\].*' contains=underline contains=bar
syn match todo_irrelevant '\[#\].*' contains=underline contains=bar
" .xxxxx.
syn match dot '\.[^ ]\{-}\.'
" <xxxx>
syn match anchor "<.\{-}>"
" coloring basic
syn match bluetext ':b.\{-}:'
syn match greentext ':g.\{-}:'
syn match redtext ':r.\{-}:'
syn match yellowtext ':y.\{-}:'
syn match whitetext ':w.\{-}:'
syn match cyantext ':c.\{-}:'
syn match pinktext ':p.\{-}:'

hi def link category Title
hi def link bullet Bullet
hi def link numbering Bullet
hi def link numbering2 Bullet
hi def link priority Priority
hi def link lowpriority LowPriority
hi def link key Key
hi def link underline Underline
hi def link title Underline
hi def link bar Underline
hi def link thoughtprocess ThoughtProcess
hi def link todo_notdone Todo_NotDone
hi def link todo_done Todo_Done
hi def link todo_semi Todo_Semi
hi def link todo_redirect Todo_Redirect
hi def link todo_cancel Todo_Cancel
hi def link todo_irrelevant Todo_Irrelevant
hi def link dot Dot
hi def link anchor Anchor
hi def link bluetext BlueText
hi def link bluelist BlueText
hi def link greentext GreenText
hi def link redtext RedText
hi def link yellowtext YellowTxt
hi def link whitetext WhiteTExt
hi def link cyantext CyanText
hi def link pinktext PinkText
