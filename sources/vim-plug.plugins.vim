"""""""""""""""""""""""Basic/Dependency Plugs""""""""""""""""""""""""
"" Common vim library
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/L9'
Plug 'MarcWeber/vim-addon-mw-utils'

""""""""""""""""""""""""Functional Plugs""""""""""""""""""""""""
"" Undo tree visualization
" Plug 'sjl/gundo.vim' " - deprecated gundo
Plug 'mbbill/undotree'

"" Surround text with something + add 's' motion
Plug 'tpope/vim-surround'

"" A simple way of switching windows
Plug 'wesQ3/vim-windowswap'

Plug 'Konfekt/FastFold'

"" Fuzzy File finder
" Note: using ctrlp as backup for cases where the repo is big
Plug 'ctrlpvim/ctrlp.vim'

" Note: Similarly, even tho I could use denite for searching, ack is slightly
" faster for really big repo.
"" Silver Searcher
" Plug 'rking/ag.vim' # sorry that you got replace, but you get to stay here
Plug 'mileszs/ack.vim'

" Easy motion is only used for '/' serach as hop doesn't have that yet.
" Easy motion is also used when hop in not in neovim.
Plug 'Lokaltog/vim-easymotion'

" Enable for neovim lua
if has('nvim') != 0
    " lua core
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'

    " Look at any tag in a popup
    Plug 'semanticart/tag-peek.vim'

    " A faster version of easy motion
    Plug 'phaazon/hop.nvim'

    " Telescope for grep / filesearch etc
    Plug 'nvim-telescope/telescope.nvim'

    " completion engine
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'ZwodahS/cmp-nvim-tags'
    Plug 'hrsh7th/nvim-cmp'

    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    " file browser
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'neomake/neomake'

    " honorary entries as I have used them for a very long time
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'deoplete-plugins/deoplete-tag'
else
    "" Super motion plugin
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

" Git gutter for displaying changes
Plug 'airblade/vim-gitgutter'
" GitWrapper
Plug 'tpope/vim-fugitive'
" Git browser viewer
Plug 'junegunn/gv.vim'
" Mainly using this for sesssion mangement
Plug 'mhinz/vim-startify'

""""""""""""""""""""""""Visual Plugs""""""""""""""""""""""""
"" Nice status line at the bottom
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" Nice theme
Plug 'nanotech/jellybeans.vim'
Plug 'sts10/vim-pink-moon'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'guns/xterm-color-table.vim'

" Auto highlight when cursor stop moving
Plug 'ZwodahS/autohighlight.vim'

if has('nvim') != 0
    "Shade?
    Plug 'sunjon/Shade.nvim'
endif
""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
"" Golang
Plug 'fatih/vim-go', { 'for': 'go' }

"" Python
Plug 'vim-scripts/python_match.vim'
"" Python Folding
Plug 'ZwodahS/SimpylFold', { 'for': 'python' }
" only enable flake8 if the file exists in the current directory
if filereadable(".flake8") != 0
    Plug 'nvie/vim-flake8', { 'for': 'python' }
endif
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

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

""""""""""""""""""""""""Testing""""""""""""""""""""""""
" Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/unicode.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'chrisbra/colorizer'
Plug 'dstein64/vim-startuptime'

if has('nvim') != 0
    Plug 'https://gitlab.com/yorickpeterse/nvim-window.git'
endif
"""""""""""""""""""""On the way out""""""""""""""""""""
"" Quick modification of date
Plug 'tpope/vim-speeddating'
"" Calendar vim
Plug 'mattn/calendar-vim'
"" Nice way to use marks
" Plug 'kshenoy/vim-signature'
"" Commenter
"Plug 'luochen1990/rainbow'
