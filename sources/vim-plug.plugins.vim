"""""""""""""""""""""""Basic/Dependency Plugs""""""""""""""""""""""""
"" Common vim library
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/L9'
Plug 'MarcWeber/vim-addon-mw-utils'
""""""""""""""""""""""""Functional Plugs""""""""""""""""""""""""
"" Align text
Plug 'vim-scripts/Align'
"" Fuzzy File finder
Plug 'ctrlpvim/ctrlp.vim'
"" Undo tree visualization
Plug 'sjl/gundo.vim'
"" Super motion plugin
Plug 'Lokaltog/vim-easymotion'
"" Surround text with something + add 's' motion
Plug 'tpope/vim-surround'
"" File browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
"" A simple way of switching windows
Plug 'wesQ3/vim-windowswap'
"" Snippet that works with YouCompleteMe
Plug 'SirVer/ultisnips'
"" Autocomplete engine. Require compilation.
if has('nvim') != 0
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Konfekt/FastFold'
    Plug 'ervandew/supertab'
    Plug 'neomake/neomake'
endif
"" Nice way to use marks
Plug 'kshenoy/vim-signature'
"" Trailing whitespace
Plug 'bronson/vim-trailing-whitespace'
"" Quick modification of date
Plug 'tpope/vim-speeddating'
"" Calendar vim
Plug 'mattn/calendar-vim'
"" Commenter
Plug 'ddollar/nerdcommenter'
"" Silver Searcher
" Plug 'rking/ag.vim' # sorry that you got replace, but you get to stay here
Plug 'mileszs/ack.vim'
"" Git gutter for displaying changes
Plug 'airblade/vim-gitgutter'
" GitWrapper
Plug 'tpope/vim-fugitive'
" Buffer viewer
Plug 'jeetsukumaran/vim-buffergator'
""""""""""""""""""""""""Visual Plugs""""""""""""""""""""""""
"" Nice status line at the bottom
Plug 'itchyny/lightline.vim'
"" Nice theme
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
" Auto highlight when cursor stop moving
Plug 'ZwodahS/autohighlight.vim'
""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
"" Python
"" Python movment
Plug 'vim-scripts/python_match.vim'
" Plug 'davidhalter/jedi-vim'
"" Syntax checker
" only enable flake8 if the file exists in the current directory
if filereadable(".flake8") != 0
    Plug 'nvie/vim-flake8', { 'for': 'python' }
endif
"" Jinja
Plug 'Glench/Vim-Jinja2-Syntax'
"" JSX (React)
Plug 'mxw/vim-jsx'
"" Javascript
Plug 'pangloss/vim-javascript'
"" Golang
Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'zchee/deoplete-go', { 'for': 'go' }
" Cython
"Plug 'tshirtman/vim-cython'
Plug 'ZwodahS/SimpylFold', { 'for': 'python' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'pedrohdz/vim-yaml-folds', { 'for': 'yaml' }
"Haxe
Plug 'jdonaldson/vaxe'
Plug 'marcweber/vim-haxe-syntax', { 'for': 'haxe' }
"Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
""""""""""""""""""""""""Testing""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
" Unite
" Haven't got to play with this yet
" Plug 'Shougo/unite.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'laher/fuzzymenu.vim'

