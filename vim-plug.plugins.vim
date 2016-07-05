""""""""""""""""""""""""Basic/Dependency Plugs""""""""""""""""""""""""
"" Common vim library
Plug 'tomtom/tlib_vim'
Plug 'L9'
Plug 'MarcWeber/vim-addon-mw-utils'
""""""""""""""""""""""""Functional Plugs""""""""""""""""""""""""
"" Align text
Plug 'Align'
"" Fuzzy File finder
Plug 'kien/ctrlp.vim'
"" Undo tree visualization
Plug 'sjl/gundo.vim'
"" Super motion plugin
Plug 'Lokaltog/vim-easymotion'
"" Surround text with something + add 's' motion
Plug 'tpope/vim-surround'
"" File browser
Plug 'scrooloose/nerdtree'
"" Merge tabs into previous window
Plug 'Tabmerge'
"" A simple way of switching windows
Plug 'wesQ3/vim-windowswap'
"" Snippet that works with YouCompleteMe
Plug 'SirVer/ultisnips'
"" Autocomplete engine. Require compilation.
"Plug 'Valloric/YouCompleteMe'
if has('nvim') != 0
    Plug 'Shougo/deoplete.nvim'
    Plug 'Konfekt/FastFold'
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
Plug 'rking/ag.vim'
"" Git gutter for displaying changes
Plug 'airblade/vim-gitgutter'
""""""""""""""""""""""""Visual Plugs""""""""""""""""""""""""
"" Nice status line at the bottom
Plug 'itchyny/lightline.vim'
"" Nice theme
Plug 'nanotech/jellybeans.vim'
" Auto highlight when cursor stop moving
Plug 'ZwodahS/autohighlight.vim'
""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
"" Python movment
Plug 'python_match.vim'
"" Syntax checker
Plug 'scrooloose/syntastic'
"" Jinja
Plug 'Glench/Vim-Jinja2-Syntax'
"" Html/css
Plug 'mattn/emmet-vim'
"" JSX (React)
Plug 'mxw/vim-jsx'
"" Javascript
Plug 'pangloss/vim-javascript'
"" Golang
Plug 'fatih/vim-go'
" Cython
Plug 'tshirtman/vim-cython'
Plug 'tmhedberg/SimpylFold'
""""""""""""""""""""""""Testing""""""""""""""""""""""""

