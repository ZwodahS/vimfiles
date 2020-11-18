syn match Datetime "\(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun\) \(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) \d\+ \d\d:\d\d:\d\d \d\d\d\d"

hi def link Datetime CommentKeywordGreen

hi CommentKeywordGreen ctermfg=28 guifg=#008700
hi CommentKeywordBlue ctermfg=39 guifg=#00afff
hi CommentKeywordRed ctermfg=197 guifg=#ff005f
" add it to haxe
