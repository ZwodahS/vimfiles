syn keyword haxeTODO TODO FIXME TOFIX LOGS NOTE QUESTION IDEA

syn match haxeAt "@[^ ]\+" contained
syn match formatterOff "@formatter:off"
syn match haxeComment "//.*" contains=haxeTODO,@Spell,ZDatetime,formatterOff,ZStop
syn region haxeComment2 start=+/\*+ end=+\*/+ contains=haxeTODO,@Spell,ZDatetime,haxeAt,MDTitle,MDBullet,ZStop
syn match MDTitle "\v^\s*#+ .*" contained
syn match MDBullet '\v^\s*\-' contained

hi def link formatterOff CommentNearInvisible
hi def link haxeParam CommentKeywordBlue

hi def link MDTitle MDTitle
hi def link MDBullet MDBullet

hi MDTitle ctermfg=178 guifg=#d7af00
hi MDBullet ctermfg=10 guifg=#00ff00
