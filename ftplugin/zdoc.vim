"" taken from http://learnvimscriptthehardway.stevelosh.com/chapters/49.html

setlocal softtabstop=2
setlocal tabstop=2
setlocal shiftwidth=2

setlocal foldmethod=expr
setlocal foldexpr=GetZdocFold(v:lnum)
function! GetZdocFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif
endfunction

function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
endfunction

function MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  return line . " ••••••••••• (" . (v:foldend - v:foldstart) . " lines) "
endfunction
setlocal foldtext=MyFoldText()
