""""""""""""""""""""""""Basic/Dependency Plugs""""""""""""""""""""""""
"" Common vim library
Plug 'tomtom/tlib_vim'
Plug 'L9'
Plug 'MarcWeber/vim-addon-mw-utils'
""""""""""""""""""""""""Functional Plugs""""""""""""""""""""""""
"" Align text
Plug 'Align'
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
"Plug 'Valloric/YouCompleteMe'
if has('nvim') != 0
    Plug 'Shougo/deoplete.nvim'
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
" Unite
Plug 'Shougo/unite.vim'
" GitWrapper
Plug 'tpope/vim-fugitive'
""""""""""""""""""""""""Visual Plugs""""""""""""""""""""""""
"" Nice status line at the bottom
Plug 'itchyny/lightline.vim'
"" Nice theme
Plug 'nanotech/jellybeans.vim'
" Auto highlight when cursor stop moving
Plug 'ZwodahS/autohighlight.vim'
""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
"" Python
"Plug 'python_match.vim'
"" Jinja
Plug 'Glench/Vim-Jinja2-Syntax'
"" Html/css
Plug 'mattn/emmet-vim'
"" JSX (React)
Plug 'mxw/vim-jsx'
"" Javascript
Plug 'pangloss/vim-javascript'
"" Golang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'for': 'go' }
" Cython
Plug 'tshirtman/vim-cython'
Plug 'Zwodahs/SimpylFold', { 'for': 'python' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
""""""""""""""""""""""""Testing""""""""""""""""""""""""
