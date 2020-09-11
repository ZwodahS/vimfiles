"""""""""""""""""""""""Basic/Dependency Plugs""""""""""""""""""""""""
"" Common vim library
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/L9'
Plug 'MarcWeber/vim-addon-mw-utils'
""""""""""""""""""""""""Functional Plugs""""""""""""""""""""""""
"" Align text - deprecating this because I seldom use it and it define
"" A lot of mappings that I don't want
" Plug 'vim-scripts/Align'
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
"" Snippet
Plug 'SirVer/ultisnips'
"" Fuzzy File finder / Buffer viewer / Denite
if has('nvim') != 0
    " use denite for fuzzy finder in neovim
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Konfekt/FastFold'
    Plug 'ervandew/supertab'
    Plug 'neomake/neomake'
else
    " this is untested, need to test.
    if has('python3')
        Plug 'Shougo/denite.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    else
        "" Fuzzy File finder
        Plug 'ctrlpvim/ctrlp.vim'
        " Buffer viewer
        Plug 'jeetsukumaran/vim-buffergator'
        "" Silver Searcher
        " Plug 'rking/ag.vim' # sorry that you got replace, but you get to stay here
        Plug 'mileszs/ack.vim'
    endif
endif
"" Trailing whitespace
Plug 'bronson/vim-trailing-whitespace'
"" Git gutter for displaying changes
Plug 'airblade/vim-gitgutter'
" GitWrapper
Plug 'tpope/vim-fugitive'
""""""""""""""""""""""""Visual Plugs""""""""""""""""""""""""
"" Nice status line at the bottom
Plug 'itchyny/lightline.vim'
"" Nice theme
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
"" Syntax checker
"" Jinja
Plug 'Glench/Vim-Jinja2-Syntax'
"" JSX (React)
Plug 'mxw/vim-jsx'
"" Javascript
Plug 'pangloss/vim-javascript'
"" Golang
Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'zchee/deoplete-go', { 'for': 'go' }
"" Python
Plug 'vim-scripts/python_match.vim'
" Plug 'davidhalter/jedi-vim'
" For python folding
Plug 'ZwodahS/SimpylFold', { 'for': 'python' }
" only enable flake8 if the file exists in the current directory
if filereadable(".flake8") != 0
    Plug 'nvie/vim-flake8', { 'for': 'python' }
endif
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
" Cython
" Plug 'tshirtman/vim-cython'
"" toml
Plug 'cespare/vim-toml', { 'for': 'toml' }
"" yaml
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'pedrohdz/vim-yaml-folds', { 'for': 'yaml' }
"" Haxe
Plug 'jdonaldson/vaxe', { 'for': 'haxe' }
Plug 'marcweber/vim-haxe-syntax', { 'for': 'haxe' }
"" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ZwodahS/autohighlight.vim'
""""""""""""""""""""""""Testing""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
"""""""""""""""""""""On the way out""""""""""""""""""""
"" Quick modification of date
Plug 'tpope/vim-speeddating'
"" Calendar vim
Plug 'mattn/calendar-vim'
" Auto highlight when cursor stop moving - currently not working
" Haven't got to play with this yet
Plug 'mattn/emmet-vim'
"" Nice way to use marks
" Plug 'kshenoy/vim-signature'
"" Commenter
Plug 'ddollar/nerdcommenter'
