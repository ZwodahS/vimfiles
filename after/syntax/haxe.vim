" Thu 14:10:01 24 Feb 2022
" I think there is a better way to do this
" Should investigate
syn keyword haxeTODO TODO FIXME TOFIX LOGS NOTE QUESTION IDEA

syn match haxeAt "@[^ ]\+" contained
syn match formatterOff "@formatter:off"
syn match haxeComment "//.*" contains=haxeTODO,@Spell,ZDatetime,formatterOff,ZStop,ZCommentSpecial1,ZCommentSpecial2,ZCommentSpecial3
syn region haxeComment2 start=+/\*+ end=+\*/+ contains=haxeTODO,@Spell,ZDatetime,haxeAt,MDTitle,MDBullet,ZStop,ZCommentSpecial1,ZCommentSpecial2,ZCommentSpecial3
syn match MDTitle "\v^\s*#+ .*" contained
syn match MDBullet '\v^\s*\-' contained

hi def link formatterOff CommentNearInvisible
hi def link haxeParam CommentKeywordBlue

hi def link MDTitle MDTitle
hi def link MDBullet MDBullet

hi MDTitle ctermfg=178 guifg=#d7af00
hi MDBullet ctermfg=10 guifg=#00ff00
