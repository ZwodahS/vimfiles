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
"""" For vim-plug
call plug#begin($vim_home."/installed_plugins")
" source all the plugins
runtime /sources/vim-plug.plugins.vim
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80,100,120
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
set listchars=tab:¬\ ,eol:↵                   " set the character for special char
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
" map C-j C-k for moving by fold
nnoremap <C-j> zj
nnoremap <C-k> zk

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
"""" Fold method forcing
nnoremap <silent> zs :set foldmethod=syntax<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Common Binding
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
""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations
runtime sources/gundo.vim
runtime sources/autohighlight.vim
runtime sources/ultisnips.vim
runtime sources/ctrlp.vim
runtime sources/windowswap.vim
runtime sources/easymotion.vim
runtime sources/lightline.vim
runtime sources/nerdtree.vim
runtime sources/signature.vim
runtime sources/git-gutter.vim
runtime sources/neomake.vim
runtime sources/ack.vim
runtime sources/go.vim
runtime sources/jsx.vim
runtime sources/buffergator.vim
" Non-plugin
runtime sources/interesting_words.vim
runtime sources/flake8-gutter.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
noremap ,time a<C-R>=strftime("%c")<CR><Esc>
" generate a random sha and put into buffer
nnoremap <silent> <leader>rs :let @"=system('echo -n $(date 2>/dev/null\|shasum 2>/dev/null\|cut -d " " -f 1)') <CR>
"""" Git
nnoremap <C-S> :!git save<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Abbreviation
abbr torando tornado
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unbind Stuffs that I am not using
nnoremap Q <NOP>
nnoremap <C-H> <NOP>
nnoremap <C-Q> <NOP>
nnoremap <C-T> <NOP>
xnoremap <C-K> <NOP>
nnoremap <leader>hh :read !header h 100 4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" neovim deoplete
if has('nvim') != 0
    " :help deoplete-options
    let g:deoplete#enable_at_startup = 1
    call deoplete#custom#option('auto_complete_delay', 50)
    call deoplete#custom#option('max_list', 15)
	call deoplete#custom#option('smart_case', v:true)

    let g:python_host_prog=$vim_home."/venv2/bin/python"
    let g:python3_host_prog=$vim_home."/venv3/bin/python"
endif
"""" Super Tab completion
let g:SuperTabDefaultCompletionType = "<c-n>"
" Let haxe use the build.hxml to build T . T
let g:neomake_haxe_haxe_args = ['.lint.hxml']
" suppres buffergator

"""" Macros
" replace 'return' with 'tornado.gen.Return'
let @t = 'cwraise tornado.gen.Return(lxA)^'
" fold by brackets
let @f = 'V$%zf'

"""" Unknown/TBC ????
cnoreabbrev du diffupdate
nnoremap <leader>du diffupdate
let g:python_highlight_all = 1
set completeopt=menu,noselect

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for config that are machine specfic
runtime sources/.local
