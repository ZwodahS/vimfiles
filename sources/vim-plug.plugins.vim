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
" deprecated
" Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'
"" Super motion plugin
Plug 'Lokaltog/vim-easymotion'
"" Surround text with something + add 's' motion
Plug 'tpope/vim-surround'
"" A simple way of switching windows
Plug 'wesQ3/vim-windowswap'
"" Snippet
Plug 'SirVer/ultisnips'
"" Fuzzy File finder / Buffer viewer / Denite
Plug 'Konfekt/FastFold'
Plug 'ervandew/supertab'
"" Fuzzy File finder
" Note: using ctrlp as backup for cases where the repo is big
Plug 'ctrlpvim/ctrlp.vim'
" Note: Similarly, even tho I could use denite for searching, ack is slightly
" faster for really big repo.
"" Silver Searcher
" Plug 'rking/ag.vim' # sorry that you got replace, but you get to stay here
Plug 'mileszs/ack.vim'
if has('nvim') != 0
    " use denite for fuzzy finder in neovim
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'neomake/neomake'
    " Plug 'Shougo/deoplete-lsp'
    " Plug 'neovim/nvim-lspconfig'
else
    " this is untested, need to test.
    " if has('python3')
    "    Plug 'Shougo/denite.nvim'
    "    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    "    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "    Plug 'roxma/nvim-yarp'
    "    Plug 'roxma/vim-hug-neovim-rpc'
    " else
    " Buffer viewer
    Plug 'jeetsukumaran/vim-buffergator'
    "" File browser (if defx is not enabled)
    Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    " endif
endif
"" Trailing whitespace
Plug 'ZwodahS/vim-trailing-whitespace'
" Investigate this later
" Plug 'ntpeters/vim-better-whitespace'
"" Git gutter for displaying changes
Plug 'airblade/vim-gitgutter'
" GitWrapper
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
""""""""""""""""""""""""Visual Plugs""""""""""""""""""""""""
"" Nice status line at the bottom
Plug 'itchyny/lightline.vim'
"" Nice theme
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'guns/xterm-color-table.vim'
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
Plug 'mhinz/vim-startify'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/unicode.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
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
