if has('nvim') == 0
    set encoding=utf-8
    set t_Co=256                                                        " Set terminal color
endif
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @ZwodahS
" github/zwodahs
"
" vimfile source : https://github.com/ZwodahS/vimfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $vim_home='~/.vim'
let $vim_plug_file=$vim_home."/sources/vim-plug.plugins.vim"
let $vim_rc=$vim_home."/vimrc"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For vim-plug
call plug#begin($vim_home."/installed_plugins")
source $vim_plug_file
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=20,40,60,80,100,120
colorscheme jellybeans
"""" Generic setup
syntax on                                                           " Syntax highlighting on
set title                                                           " Display path at top
set backspace=2                                                     " Allow backspace to delete other keys
set scroll=15                                                       " Set scroll for ctrl-U ctrl-D
set autoread
set hlsearch                                                        " highlight search term
set hidden                                                          " allow buffer to switch when not saved
set ruler
set smartindent                                                     " Autoindent
set nowrap                                                          " Disable line wrap
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
" Toggle showing of line number
nmap <silent> <leader>nn :set number!<CR>
" Toggle showing of relative number
nmap <silent> <leader>nr :set relativenumber!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" remap folding to - and +/=
vnoremap - zf
nnoremap - zc
nnoremap = zo
nnoremap + zO
let g:BASH_Ctrl_j = 'off'
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
nnoremap <C-W>- :vertical resize 160<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Additional Quality of life bindings
nnoremap <Space> f<Space>
set cursorline
set cursorcolumn
"""" Trailing whitespace
nmap <silent> <leader><space> :FixWhitespace<CR>
vmap <silent> <leader><space> :FixWhitespace<CR>
"""" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-L>'
""" JSX
let g:jsx_ext_required = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $vim_home/sources/interesting_words.vim
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
noremap ,time a<C-R>=strftime("%c")<CR><Esc>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Abbreviation
abbr torando tornado
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unbind Stuffs
nnoremap Q <nop>
nnoremap <C-H> <NOP>
nnoremap <C-Q> <NOP>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap - zc
hi Folded ctermbg=0 ctermfg=94

"""" neovim
if has('nvim') != 0
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#auto_complete_delay = 50
    let g:python_host_prog = "/home/eric/.vimfiles/venv2/bin/python"
    let g:python3_host_prog = "/home/eric/.vimfiles/venv3/bin/python"
    set relativenumber
endif
let g:SuperTabDefaultCompletionType = "<c-n>"
set mouse=
