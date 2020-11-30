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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unbind Stuffs that I am not using
nnoremap Q <NOP>
nnoremap <C-H> <NOP>
nnoremap <C-Q> <NOP>
nnoremap <C-T> <NOP>
xnoremap <C-K> <NOP>
"""" For vim-plug
call plug#begin($vim_home."/installed_plugins")
" source all the plugins
runtime /sources/vim-plug.plugins.vim
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80,100,119,120
""" color scheme selection
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
"colorscheme jellybeans
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
" https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
" set directory to store swp
set directory=~/.vim/.swp//
set noshowmode                                      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2                                    " Always display the statusline in all windows
set showtabline=2                                   " Always display the tabline, even if there is only one tab
set mouse=                                          " disable mouse, mainly for macvim
set autoindent
nnoremap ! :!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Special EOL char and tabs
set listchars=tab:¬\ ,eol:↵                         " set the character for special char
" toggle for showing eol and other char
nnoremap <silent> <leader>l :set list!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" line number and relative line number
" Toggle showing of line number
nnoremap <silent> <leader>nn :set number!<CR>
" Toggle showing of relative number
nnoremap <silent> <leader>nr :set relativenumber!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Folding remap
" - to fold/close +/= to open
xnoremap - zf
nnoremap - zc
nnoremap = zo
nnoremap + zO
"""" Fold method forcing
nnoremap <silent> zs :set foldmethod=syntax<CR>
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Windows
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
"""" Sessions
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
set completeopt=menu,preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
" generate a random sha and put into buffer
nnoremap <silent> <leader>rs :let @"=system('echo -n $(date 2>/dev/null\|shasum 2>/dev/null\|cut -d " " -f 1)') <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Git
nnoremap <C-S> :!git save<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Macros
" fold by brackets, only works in manual fold
let @f = 'V$%zf'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Insert mode goodies
inoremap <C-e><C-e> <C-R>=expand("%:t:r")<CR>
inoremap <C-e><C-i> <ESC>pa
inoremap <C-e><C-t> <C-R>=strftime("%c")<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" Plugins configurations
runtime sources/gundo.vim
runtime sources/autohighlight.vim
runtime sources/ultisnips.vim
runtime sources/windowswap.vim
runtime sources/easymotion.vim
runtime sources/lightline.vim
"runtime sources/signature.vim
runtime sources/git-gutter.vim
runtime sources/ack.vim
runtime sources/go.vim
runtime sources/jsx.vim
runtime sources/tagbar.vim
runtime sources/startify.vim
runtime sources/trailing-whitespace.vim
runtime sources/supertab.vim
" Note: using ctrlp together with denite.
" Ctrlp is slightly faster when dealing with super big repo
runtime sources/ctrlp.vim
" nvim specific
if has('nvim') != 0
    runtime sources/deoplete.vim
    runtime sources/denite.vim
    runtime sources/defx.vim
    runtime sources/neomake.vim
else
    " this is untested, need to test.
    " if has('python3') != 0
    "     runtime sources/deoplete.vim
    "     runtime sources/denite.vim
    "     runtime sources/defx.vim
    " else
    runtime sources/buffergator.vim
    runtime sources/nerdtree.vim
    " endif
endif
" Non-plugin
runtime sources/interesting_words.vim
runtime sources/flake8-gutter.vim



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unknown/TBC/Deprecating ????
let g:python_highlight_all = 1
""""""""""""""""""""" TESTING STUFFS BEFORE PUTTING THEM IN SOURCE

" Provide some syntax stuffs that is common to all language
augroup syntaxchange
    autocmd Syntax * syntax match Datetime "\(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun\) \(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) \d\+ \d\d:\d\d:\d\d \d\d\d\d"
augroup END

hi Datetime ctermfg=248 guifg=#a8a8a8

hi CommentKeywordGreen ctermfg=28 guifg=#008700
hi CommentKeywordBlue ctermfg=39 guifg=#00afff
hi CommentKeywordRed ctermfg=197 guifg=#ff005f
hi CommentNearInvisible ctermfg=240 guifg=#585858
" add it to haxe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Machine Specific Configuration
" for config that are machine specfic

" This hash is for project specific vim file.
" In case some project accidentally have a file that is named in the same way
" or someone trying to run this on my machine via a repo when i accidentally include it
" this hash in theory prevents it
let g:project_hash=''

runtime sources/.local.vim

" source directory specific file.
" This is dangerous when opening new repo from unknown origin so we put a hash
" that is local to the machine that is never committed.
let $localfile=join([getcwd(), "/.project.", g:project_hash, ".vim"], '')
if (g:project_hash != '' && filereadable($localfile))
    source $localfile
    echom 'Project Script loaded!!!'
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
