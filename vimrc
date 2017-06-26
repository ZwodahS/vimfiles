if has('nvim') == 0
    set encoding=utf-8
    set t_Co=256                                                        " Set terminal color
endif
if has('termguicolors')
    set termguicolors
endif
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @ZwodahS
" github/zwodahs
"
" vimfile source : https://github.com/ZwodahS/vimfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set variables
let $vim_home=expand('~/.vim')
let $vim_rc=$vim_home."/vimrc"
let $vim_plug_file=$vim_home."/sources/vim-plug.plugins.vim"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For vim-plug
call plug#begin($vim_home."/installed_plugins")
" source all the plugins
source $vim_plug_file
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=20,40,60,80,100,120
colorscheme jellybeans
"""" Generic setup
syntax on                                           " Syntax highlighting on
set title                                           " Display path at top
set backspace=2                                     " Allow backspace to delete other keys
set scroll=3                                        " Set scroll for ctrl-U ctrl-D
set autoread                                        " Auto read file if it has been changed outside but not in vim
set hlsearch                                        " highlight search term
set hidden                                          " allow buffer to switch when not saved
set smartindent                                     " Autoindent
set nowrap                                          " Disable line wrap
" https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
" set directory to store swp
set directory=~/.vim/.swp//
set noshowmode                                      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2                                    " Always display the statusline in all windows
set showtabline=2                                   " Always display the tabline, even if there is only one tab
set mouse=                                          " Disable Mouse
nnoremap ! :!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Special EOL char and tabs
set listchars=tab:¬\ ,eol:↵                   " set the character for special char
" toggle for showing eol and other char
nnoremap <silent> <leader>l :set list!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" line number and relative line number
" Toggle showing of line number
nmap <silent> <leader>nn :set number!<CR>
" Toggle showing of relative number
nmap <silent> <leader>nr :set relativenumber!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Folding remap
" - to fold/close +/= to open
hi Folded ctermbg=0 ctermfg=7
vnoremap - zf
nnoremap - zc
nnoremap = zo
nnoremap + zO
" disable bash control J short cut
let g:BASH_Ctrl_j = 'off'
" map C-j C-k for moving by fold
nnoremap <C-j> zj
nnoremap <C-k> zk
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For tabbing (default tabbing)
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" set file type for some stuffs
autocmd BufRead,BufNewFile .gitignore set filetype=conf.gitignore
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.todo set filetype=todo
autocmd BufRead,BufNewFile *.zdoc set filetype=zdoc
autocmd BufRead,BufNewFile *.js set foldmethod=syntax
autocmd BufRead,BufNewFile *.jsx set foldmethod=syntax
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
" remove syntax for this file
nmap <silent> <leader>sf :setlocal syntax=text<CR>
" Toggle paste mode, (aka turn off smart indent)
nmap <silent> <leader>i :set paste! <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Edit important files
" open vimrc
nmap <leader>vfv :view $vim_rc<CR>
" open plugins
nmap <leader>vfp :view $vim_plug_file<CR>
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
" make it width 160, i.e. the main window
nnoremap <C-W>- :vertical resize 160<cr>
" overwrite the default split direction
set splitbelow
set splitright
"""" Sessions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Additional Quality of life bindings
nnoremap <Space> f<Space>
" show cursor line and column
set cursorline
set cursorcolumn
"""" Remove Trailing whitespace
nmap <silent> <leader><space> :FixWhitespace<CR>
vmap <silent> <leader><space> :FixWhitespace<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations
source $vim_home/sources/gundo.vim
source $vim_home/sources/autohighlight.vim
source $vim_home/sources/ultisnips.vim
source $vim_home/sources/ctrlp.vim
source $vim_home/sources/windowswap.vim
source $vim_home/sources/easymotion.vim
source $vim_home/sources/lightline.vim
source $vim_home/sources/nerdtree.vim
source $vim_home/sources/signature.vim
source $vim_home/sources/git-gutter.vim
source $vim_home/sources/neomake.vim
source $vim_home/sources/ack.vim
source $vim_home/sources/go.vim
source $vim_home/sources/jsx.vim
" Non-plugin
source $vim_home/sources/interesting_words.vim
source $vim_home/sources/sessions.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
noremap ,time a<C-R>=strftime("%c")<CR><Esc>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Abbreviation
abbr torando tornado
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unbind Stuffs that I am not using
nnoremap Q <nop>
nnoremap <C-H> <NOP>
nnoremap <C-Q> <NOP>
nnoremap <C-T> <NOP>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" neovim deoplete
if has('nvim') != 0
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#auto_complete_delay = 50
    let g:python_host_prog=$vim_home."/venv2/bin/python"
    let g:python3_host_prog=$vim_home."/venv3/bin/python"
endif
"""" Super Tab completion
let g:SuperTabDefaultCompletionType = "<c-n>"

"""" Macros
" replace 'return' with 'tornado.gen.Return'
let @t = 'cwraise tornado.gen.Retr�kburn(lxA)^'
" fold by brackets
let @f = 'v%zf'

"""" Unknown/TBC ????
cnoreabbrev du diffupdate
nnoremap <leader>du diffupdate
let g:python_highlight_all = 1
