syn keyword haxeTODO TODO FIXME TOFIX LOGS NOTE

syn match haxeAt "@[^ ]\+"

syn match haxeComment "//.*" contains=haxeTODO,@Spell,Datetime
syn region haxeComment2 start=+/\*+ end=+\*/+ contains=haxeTODO,@Spell,Datetime,haxeAt

hi def link haxeParam CommentKeywordBlue
