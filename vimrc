 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @ZwodahS
"
" github/zwodahs
"
" vimfile source : https://github.com/ZwodahS/vimfiles
" vim tips : https://www.reddit.com/r/vim/wiki/vimrctips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set variables

" for some reason has("termguicolors") was wrongly detected in server, need to
" figure out why
set termguicolors
let $vim_home=expand('~/.vim')
let $vim_rc=$vim_home."/vimrc"
let $vim_plug_file=$vim_home."/sources/vim-plug.plugins.vim"
let $sources=$vim_home."/sources"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unbind Stuffs that I am not using
nnoremap Q <NOP>
nnoremap <C-G> <NOP>
nnoremap <C-H> <NOP>
nnoremap <C-Q> <NOP>
nnoremap <C-T> <NOP>
xnoremap <C-K> <NOP>
"""" For vim-plug
call plug#begin($vim_home."/installed_plugins")
" source all the plugins
source $sources/vim-plug.plugins.vim
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=60,80,100,119,120
""" color scheme selection
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_theme='base16_gruvbox_dark_hard'
set background=dark
"""
"use light bg if the env var is there.
if $LIGHT == "1"|set bg=light|endif
""" Generic setup
if !has('g:syntax_on')|syntax enable|endif
set title                                           " Display path at top
set backspace=2                                     " Allow backspace to delete other keys
set scroll=3                                        " Set scroll for ctrl-U ctrl-D
set autoread                                        " Auto read file if it has been changed outside but not in vim
set hlsearch                                        " highlight search term
set hidden                                          " allow buffer to switch when not saved
set nowrap                                          " Disable line wrap
set directory=~/.vim/.swp//                         " set directory to store swp
set noshowmode                                      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2                                    " Always display the statusline in all windows
set showtabline=2                                   " Always display the tabline, even if there is only one tab
set mouse=                                          " disable mouse, mainly for macvim
set autoindent
set noequalalways
""" easy way to run bash command
nnoremap ! :!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set listchars=tab:¬\ ,eol:↵                         " set the character for EOL and tabs
" toggle for showing eol and other char
nnoremap <silent> <leader>l :set list!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" line number and relative line number
" Toggle showing of line number
nnoremap <silent> <leader>nn :set number!<CR>
" Toggle showing of relative number
nnoremap <silent> <leader>nr :set relativenumber!<CR>
" enable relativenumber in visual mode
vmap <C-I> <ESC>:set relativenumber!<CR>gv
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Folding remap
" - to fold/close +/= to open
xnoremap - zf
nnoremap - zc
nnoremap = zo
nnoremap + zO
"""" Fold method forcing
nnoremap <silent> zs :setlocal foldmethod=syntax<CR>
" map C-j C-k for moving by fold
nnoremap <C-j> zj
nnoremap <C-k> zk
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Global Clipboard
vmap gy "+y
nnoremap gp "+p
vnoremap gp "+p
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For tabbing (default tabbing)
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
nnoremap <silent> <leader>tt2 :set softtabstop=2<CR>:set tabstop=2<CR>:set shiftwidth=2<CR>:echo "Tab set to 2"<CR>
nnoremap <silent> <leader>tt4 :set softtabstop=4<CR>:set tabstop=4<CR>:set shiftwidth=4<CR>:echo "Tab set to 4"<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" set file type for some stuffs
augroup filetypedetect
    autocmd BufRead,BufNewFile .gitignore set filetype=conf.gitignore
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.todo set filetype=todo
    autocmd BufRead,BufNewFile *.zdoc set filetype=zdoc
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clear search
nnoremap <silent> <leader>gc :let @/= ""<CR>
" toggle wrap
nnoremap <silent> <leader>w :set wrap!<CR>
" update vimrc
nnoremap <silent> <leader>uv :source $MYVIMRC<CR>
" update syntax highlighting
nnoremap <silent> <leader>uf :syntax sync fromstart<CR>
" remove syntax for this file
nnoremap <silent> <leader>sf :setlocal syntax=text<CR>
" Toggle paste mode, (aka turn off smart indent)
nnoremap <silent> <leader>i :set paste! <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Edit important files
" open vimrc
nnoremap <leader>vfv :view $vim_rc<CR>
" open plugins
nnoremap <leader>vfp :view $vim_plug_file<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Tabs
" open current buffer in new tab
nnoremap <C-W>t :tab split<CR>
" close all tab except active
nnoremap <C-W>r :tabonly<CR>
" close current active
nnoremap <C-W><C-R> :tabclose<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Windowing
" resize splits
noremap <Up> :resize +3<cr>
noremap <Down> :resize -3<cr>
noremap <Left> :vertical resize -3<cr>
noremap <Right> :vertical resize +3<cr>
" make it width 160, i.e. the main window
nnoremap <C-W>- :vertical resize 160<cr>
" overwrite the default split direction
set splitbelow
set splitright
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Additional Quality of life bindings
nnoremap <Space> f<Space>
vnoremap <Space> f<Space>
" show cursor line and column
set cursorline
set cursorcolumn
"""" Remove Trailing whitespace
nnoremap <silent> <leader><Space> :FixWhitespace<CR>
xnoremap <silent> <leader><Space> :FixWhitespace<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" complete opt
" set completeopt=menu,noselect
" set completeopt=menu,preview
set completeopt=menuone,noselect
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
" generate a random sha and put into buffer
nnoremap <silent> <leader>rs :let @"=system('echo -n $(date 2>/dev/null\|shasum 2>/dev/null\|cut -d " " -f 1)') <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Macros
" fold by brackets, only works in manual fold
let @f = 'V$%zf'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Insert mode goodies
inoremap <C-e><C-e> <C-R>=expand("%:t:r")<CR>
inoremap <C-e><C-i> <ESC>pa
inoremap <C-e><C-d> <C-R>=strftime("%d %b %Y")<CR>
inoremap <C-e><C-t> <C-R>=strftime("%a %H:%M:%S %d %b %Y")<CR>
inoremap <C-e><C-j> <C-R>=strftime("%d/%m/%Y %H:%M")<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Plugins configurations
source $sources/gundo.vim
source $sources/autohighlight.vim
source $sources/ultisnips.vim
source $sources/windowswap.vim
source $sources/lightline.vim
"source $sources/signature.vim
source $sources/git-gutter.vim
source $sources/ack.vim
source $sources/go.vim
source $sources/jsx.vim
source $sources/tagbar.vim
source $sources/startify.vim
source $sources/trailing-whitespace.vim
source $sources/supertab.vim
source $sources/easymotion.vim
" using both ctrlp and telescope, but mapping ctrlp to <leader>p instead
" in the case where vim is use, then ctrlp is mapped to cltrp
source $sources/ctrlp.vim
" nvim specific
let g:python3_host_prog=$vim_home."/venv3/bin/python"
if has('nvim') != 0
     "source $sources/deoppet.vim
    " source $sources/deoplete.vim
    source $sources/denite.vim
    source $sources/defx.vim
    " source $sources/neomake.vim
    " source $sources/nvim-compe.vim
    source $sources/vsnip.vim
    source $sources/telescope.vim
    source $sources/tagpeek.vim
    source $sources/nvim-window.vim
    " source $sources/shade.vim
else
    " this is untested, need to test.
    " if has('python3') != 0
    "     source $sources/deoplete.vim
    "     source $sources/denite.vim
    "     source $sources/defx.vim
    " else
    source $sources/buffergator.vim
    source $sources/nerdtree.vim
    " endif
endif
source $sources/vaxe.vim
" Non-plugin
source $sources/interesting_words.vim
source $sources/flake8-gutter.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Custom date stuffs
" Provide some syntax stuffs that is common to all language
" Mon 13:34:20 20 Sep 2021
augroup syntaxchange
    autocmd Syntax * syn match ZDatetime "\(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun\) \(\d\d:\d\d:\d\d\) \d\+ \(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) \d\d\d\d"
    autocmd Syntax * syn keyword ZStop ISTOPHERE
augroup END
hi ZDatetime ctermfg=248 guifg=#a8a8a8
hi ZStop ctermfg=160 guifg=#d70000
hi CommentKeywordGreen ctermfg=28 guifg=#008700
hi CommentKeywordBlue ctermfg=39 guifg=#00afff
hi CommentKeywordRed ctermfg=197 guifg=#ff005f
hi CommentNearInvisible ctermfg=237 guifg=#3a3a3a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unknown/TBC/Deprecating
let g:python_highlight_all = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" TESTING STUFFS BEFORE PUTTING THEM IN SOURCE
" Table mode
let g:table_mode_corner='|'
" Mac Vim Default font
set guifont=FiraCode\ Nerd\ Font\ Mono:h11

" prefer a local sessions over global sessions
let g:startify_session_dir = '.sessions'
nmap <C-S><C-S> :SSave! vim.session<CR>
nmap <C-S><C-L> :SLoad! vim.session<CR>

"airline
let g:airline_powerline_fonts = 1

nmap <leader>ct :ColorToggle<CR>

let g:rainbow_active = 0
nnoremap <C-T> :call tag_peek#ShowTag()<CR>

" set the starting cwd to where we open vim.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Machine Specific Configuration
" for config that are machine specfic
" This hash is for project specific vim file.
" In case some project accidentally have a file that is named in the same way
" or someone trying to run this on my machine via a repo when i accidentally include it
" this hash in theory prevents it
let g:project_hash=''
source $sources/.local.vim
" source directory specific file.
" This is dangerous when opening new repo from unknown origin so we put a hash
" that is local to the machine that is never committed.
let $localfile=join([getcwd(), "/.project.", g:project_hash, ".vim"], '')
if (g:project_hash != '' && filereadable($localfile))
    source $localfile
    echom 'Project Script loaded!!!'
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
