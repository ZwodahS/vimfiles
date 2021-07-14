syn keyword haxeTODO TODO FIXME TOFIX LOGS NOTE QUESTION IDEA

syn match haxeAt "@[^ ]\+" contained
syn match formatterOff "@formatter:off"
syn match haxeComment "//.*" contains=haxeTODO,@Spell,ZDatetime,formatterOff
syn region haxeComment2 start=+/\*+ end=+\*/+ contains=haxeTODO,@Spell,ZDatetime,haxeAt

hi def link formatterOff CommentNearInvisible
hi def link haxeParam CommentKeywordBlue
