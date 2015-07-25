set encoding=utf-8
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
source $vim_home/installed_plugins.vim
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=79,100,120
colorscheme jellybeans
"""" Generic setup
set t_Co=256                                                        " Set terminal color
syntax on                                                           " Syntax highlighting on
set title                                                           " Display path at top
set backspace=2                                                     " Allow backspace to delete other keys
set wildignore+=*.swp,*.zip,*.o,*.class,*.jar,*.pyc,venv,venv3,node_modules      " set wild ignore for ctrlp
set scroll=15                                                       " Set scroll for ctrl-U ctrl-D
set autoread
set hlsearch                                                        " highlight search term
set hidden                                                          " allow buffer to switch when not saved
set ruler
set smartindent                                                     " Autoindent
set nowrap                                                          " Disable line wrap
" map ; to :
" nnoremap ; :
" vnoremap ; :
" map ! to :! to start running bash command
nnoremap ! :!
" https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
" set directory to store swp
set directory=~/.vim/.swp//
set noshowmode                                                      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2                                                    " Always display the statusline in all windows
set showtabline=2                                                   " Always display the tabline, even if there is only one tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Special EOL char
set listchars=tab:¬\ ,eol:↵                                         " set the character for special char
" toggle for showing eol and other char
nnoremap <silent> <leader>l :set list!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" line number and relative line number
" set number                                                          " line number
" relative number - disabled due to lag
" set relativenumber                                                  " relative line number
" Toggle for showing line number
nmap <silent> <leader>nn :set number!<CR>
" Toggle for showing jelative number
nmap <silent> <leader>nr :set relativenumber!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For Folding disable for now until i find a good way to do folding.
" set foldmethod=syntax
" set foldnestmax=10
" set nofoldenable
" set foldlevel=0
set viewoptions-=options
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For tabbing (default tabbing)
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For airline
"""" For lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
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
" clear search
nmap <silent> <leader>c :let @/= ""<CR>
" toggle wrap
nmap <silent> <leader>w :set wrap!<CR>
" update vimrc
nmap <silent> <leader>uv :source $MYVIMRC<CR>
" update syntax highlighting
nmap <silent> <leader>uf :syntax sync fromstart<CR>
" remove all trailing white space (replaced with trailing whitespace plugin)
"nmap <silent> <leader><space> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Toggle paste mode, (aka turn off smart indent)
nmap <silent> <leader>i :set paste! <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Edit important files
" open vimrc
nmap <leader>vfv :view $vim_home/vimrc<CR>
" open plugins
nmap <leader>vfp :view $vim_home/installed_plugins.vim<CR>
" open new_commands
nmap <leader>vfn :view $vim_home/new_commands<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Tabs
" open current buffer in new tab
nmap <C-W>t :tab split<CR>
" close all tab except active
nmap <C-W>r :tabonly<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Windows
" resize splits
noremap <Up> :resize +3<cr>
noremap <Down> :resize -3<cr>
noremap <Left> :vertical resize -3<cr>
noremap <Right> :vertical resize +3<cr>
nmap \| :vertical resize 105<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Trailing whitespace
nmap <silent> <leader><space> :FixWhitespace<CR>
vmap <silent> <leader><space> :FixWhitespace<CR>
"""" Gundo Plugin
" gundo (undo tree)
nmap <leader>g :GundoToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" NerdTree Plugin
" toggle nerd tree
nmap <leader>f :NERDTreeToggle<CR>
let g:NERDTreeWinPos="left"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Rainbow bracket
nmap <silent> <leader>rainbow :RainbowParenthesesToggle<CR>
"""" YouCompleteMe Plugin
set completeopt=menu,longest
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_key_list_select_completion = ['<C-J>']                    " Set selection to <C-J>
"let g:ycm_key_list_previous_completion = ['<C-K>']                  " Set prev selection to <C-K>
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" UltiSnips
let g:UltiSnipsExpandTrigger="<C-T>"
let g:UltiSnipsJumpForwardTrigger="<C-T>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" CtrlP
" nmap :CtrlPClearCache
"""" CtrlP-Funky
" nmap <C-J> :CtrlPFunky<CR>
"""" CTRLP CMD
nmap <C-J> :CtrlPCmdPalette<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" CtrlSpace Plugin
let g:ctrlspace_ignored_files = "[venv3|venv]"
hi def link CtrlSpaceNormal   Normal
hi def link CtrlSpaceSelected Visual
hi def link CtrlSpaceSearch   IncSearch
hi def link CtrlSpaceStatus   StatusLine
hi CtrlSpaceSelected ctermfg=22 ctermbg=9 cterm=bold,reverse
hi CtrlSpaceNormal   ctermfg=12 ctermbg=0 cterm=NONE
hi CtrlSpaceSearch   ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceStatus   term=reverse cterm=reverse ctermfg=12 ctermbg=8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Tab merge Plugin
nmap <leader>,m :Tabmerge<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Window windowswap Plugin
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <C-W>y :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <C-W>p :call WindowSwap#DoWindowSwap()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Syntastic
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [ "python" ],
    \ "passive_filetypes": [] }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Easy Motion Plugin
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nmap J <Plug>(easymotion-j)
nmap K <Plug>(easymotion-k)
nmap - <Plug>(easymotion-prefix)
let g:EasyMotion_keys = "qwertasdfgpoiulkjhQWERTASDFGPOIUYLKJHMNVvcbnm"
"""" vim-signature
let g:SignatureIncludeMarks = "qwertasdfgzxcvb"
nmap <leader>nm :SignatureToggleSigns<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-L>'
""" JSX
let g:jsx_ext_required = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Interesting words, taken from https://github.com/nicknisi/dotfiles
function Match(word, color)
    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:color
    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)
    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(a:word, '\') . '\>'
    " Actually match the words.
    call matchadd("InterestingWord" . a:color, pat, 1, mid)
endfunction
function! HiInterestingWord(n)
    " Save our location.
    normal! mz
    " Yank the current word into the z register.
    normal! "zyiw
    :call Match(@z, a:n)
    " Move back to our original location.
    normal! `z
    :delmarks z
endfunction
nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>
hi def InterestingWord1 ctermfg=16 ctermbg=214
hi def InterestingWord2 ctermfg=16 ctermbg=154
hi def InterestingWord3 ctermfg=16 ctermbg=121
hi def InterestingWord4 ctermfg=16 ctermbg=137
hi def InterestingWord5 ctermfg=16 ctermbg=211
hi def InterestingWord6 ctermfg=16 ctermbg=195
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
noremap ,time a<C-R>=strftime("%c")<CR><Esc>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Abbreviation
abbr torando tornado
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Training
"""" Unbind Stuffs
nnoremap Q <nop>
nnoremap <C-H> <NOP>
nnoremap <C-Q> <NOP>
