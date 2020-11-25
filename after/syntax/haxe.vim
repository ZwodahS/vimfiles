syn keyword haxeTODO TODO FIXME TOFIX LOGS NOTE

syn match haxeAt "@[^ ]\+" contained
syn match formatterOff "@formatter:off"
syn match haxeComment "//.*" contains=haxeTODO,@Spell,Datetime,formatterOff
syn region haxeComment2 start=+/\*+ end=+\*/+ contains=haxeTODO,@Spell,Datetime,haxeAt

hi def link formatterOff CommentNearInvisible
hi def link haxeParam CommentKeywordBlue
