 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @ZwodahS
" github/zwodahs
"
" vimfile source : https://github.com/ZwodahS/vimfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $vim_home='~/.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For Vundle
set nocompatible
filetype off
set rtp+=$vim_home/bundle/vundle
call vundle#begin($vim_home."/vundle")
" Plugins
:source $vim_home/plugins
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Generic setup
set encoding=utf-8
set t_Co=256 " # Set terminal color
syntax on " # Syntax highlighting on
set title " # Display path at top
set backspace=2 " # Allow backspace to delete other keys
set wildignore+=*.swp,*.zip,*.o,*.class,*.jar,*.pyc,venv,venv3 " # set wild ignore for ctrlp
set scroll=15 " # Set scroll for ctrl-U ctrl-D
set autoread
set hlsearch " # highlight search term
set hidden " # allow buffer to switch when not saved
set ruler
set smartindent
set nowrap                                  " Disable line wrap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Special EOL char
set listchars=tab:¬\ ,eol:↵                 " set the character for special char
" toggle for showing eol and other char
nmap <silent> tl :set list!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" line number and relative line number
set number                                  " line number
set relativenumber                          " relative line number
hi LineNr ctermfg=27
" Toggle for showing line number
nmap <silent> tn :set number!<CR>
" Toggle for showing relative number
nmap <silent> tr :set relativenumber!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For tabbing (default tabbing)
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For Airline
set laststatus=2                            " Always display the statusline in all windows
set showtabline=2                           " Always display the tabline, even if there is only one tab
set noshowmode                              " Hide the default mode text (e.g. -- INSERT -- below the statusline)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" set file type for some stuffs
autocmd BufRead,BufNewFile .gitignore set filetype=conf.gitignore
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufRead,BufNewFile VagrantFile set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.todo set filetype=todo
autocmd BufRead,BufNewFile *.zdoc set filetype=zdoc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Python stuffs
nnoremap <silent> <F9> :!clear; python %<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Common Binding
" clear search [L_c]
nmap <leader>c :let @/= ""<CR>
" toggle wrap
nmap <silent> tw :set wrap!<CR>
" update vimrc
nmap <silent> <leader>uv :source $MYVIMRC<CR>
" update snippets
nmap <silent> <leader>us :call ReloadAllSnippets()<CR>
" update syntax highlighting
nmap <silent> <leader>uf :syntax sync fromstart<CR>
" remove all trailing white space
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <silent> <leader><space> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <silent> tiii :set paste! <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Edit important files
" open vimrc
nmap <leader>vv :tabedit $vim_home/vimrc<CR>
" open plugins
nmap <leader>vp :tabedit $vim_home/plugins<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Tabs
" open current buffer in new tab
nmap <C-W>t :tab split<CR>
" close all tab except active
nmap <C-W>r :tabonly<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Toggle comment color
" set the comment color to a specific predefined color
" (tcc = toggle comment color)
" tcc0 : dark gray
nmap <silent> tcc0 :hi Comment ctermfg = 0<CR>
" tcc1 : default gray
nmap <silent> tcc1 :hi Comment ctermfg = 8<CR>
" tcc2 : blue
nmap <silent> tcc2 :hi Comment ctermfg = 38<CR>
" tcc3 : green
nmap <silent> tcc3 :hi Comment ctermfg = 28<CR>
" tcc4 : orange
nmap <silent> tcc4 :hi Comment ctermfg = 130<CR>
nmap <silent> tcc5 :hi Comment ctermfg = 13<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Gundo Plugin
" gundo (undo tree)
nmap <silent> tu :GundoToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" NerdTree Plugin
" toggle nerd tree
nmap <silent> tf :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Jedi Plugin
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>gp"
let g:jedi#goto_definitions_command = "<leader>gd"
let g:jedi#documentation_command = ""
let g:jedi#usages_command = ""
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = ""
let g:jedi#show_call_signatures = "0"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" CtrlSpace Plugin
let g:ctrlspace_ignored_files = "[venv3|venv]"
hi def link CtrlSpaceNormal   Normal
hi def link CtrlSpaceSelected Visual
hi def link CtrlSpaceSearch   IncSearch
hi def link CtrlSpaceStatus   StatusLine
" Colors of CtrlSpace for Solarized Dark
" (MacVim and Console Vim under iTerm2 with Solarized Dark theme)
" Based on Solarized TablineSel
hi CtrlSpaceSelected ctermfg=22 ctermbg=9 cterm=bold,reverse
" Based on Solarized Tabline/TablineFill
" original Normal
" hi CtrlSpaceNormal   guifg=#839496 guibg=#073642 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
" tweaked Normal with darker background in Gui
hi CtrlSpaceNormal   ctermfg=12 ctermbg=0 cterm=NONE
" Based on Title
hi CtrlSpaceSearch   ctermfg=9 ctermbg=NONE term=bold cterm=bold
" Based on PmenuThumb
hi CtrlSpaceStatus   term=reverse cterm=reverse ctermfg=12 ctermbg=8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Easy Motion Plugin
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nmap J <Plug>(easymotion-j)
nmap K <Plug>(easymotion-k)
nmap - <Plug>(easymotion-prefix)
let g:EasyMotion_keys = "qwertasdfgpoiuylkjhmnv"
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Interesting words, taken from https://github.com/nicknisi/dotfiles
function! HiInterestingWord(n)
    " Save our location.
    normal! mz
    " Yank the current word into the z register.
    normal! "zyiw
    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n
    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)
    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'
    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)
    " Move back to our original location.
    normal! `z
endfunction
nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>
hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Training
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"""" Unbind Stuffs
nnoremap Q <nop>
nnoremap <C-Q> <NOP>
inoremap <C-J> <NOP>
""""""""""""""""""""""""""""""""""""""""""""""""""""
