"""""""""""""""""""""""CHANGE LOG"""""""""""""""""""""""""""""""
" Thu 11:05:34 03 Feb 2022
" Re-organise this file slightly to prepare to split the file into 2 based on
" neovim and vim. I still think that it is still better to have a vim set up
" that works.
"""""""""""""""""""""""Deprecated ???"""""""""""""""""""""""""""
"" Common vim library
" Thu 20:29:13 27 Jan 2022
" Disabling these, might not longer be needed ???? perhaps need to test and
" disable these for neovim only ?
" Plug 'tomtom/tlib_vim'
" Plug 'vim-scripts/L9'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug Konfekt/FastFold " https://github.com/Konfekt/FastFold

""""""""Common""""""""
"""" Undo tree visualization
" Plug 'sjl/gundo.vim' " - deprecated gundo
" 03 Feb 2022 RE-ORG
Plug 'mbbill/undotree' " https://github.com/mbbill/undotree

"""" vim-surround
"" Surround text with something + add 's' motion
" 03 Feb 2022 RE-ORG
Plug 'tpope/vim-surround' " https://github.com/tpope/vim-surround

"""" window switching
"" A simple way of switching windows
" 03 Feb 2022 RE-ORG
Plug 'wesQ3/vim-windowswap' " https://github.com/wesQ3/vim-windowswap

"""" Fuzzy File finder
" Note: using ctrlp as backup for cases where the repo is big
" 03 Feb 2022 RE-ORG
Plug 'ctrlpvim/ctrlp.vim'

"""" Searcher
" Note: Similarly, even tho I could use denite for searching, ack is slightly
" faster for really big repo.
" Plug 'rking/ag.vim' # you got replaced, keeping it here as memorial
" 03 Feb 2022 RE-ORG
Plug 'mileszs/ack.vim'

"""" Motion
" Note: Easy motion is only used for '/' search as hop doesn't have that yet.
" Note: Easy motion is also used when hop in not in neovim.
" Thu 20:30:34 27 Jan 2022
" There is currently a bug in easymotion (I think) causing undo tree to break
" 03 Feb 2022 RE-ORG
Plug 'Lokaltog/vim-easymotion'

"""" Trailing whitespace
" Investigate this later 'ntpeters/vim-better-whitespace'
" 03 Feb 2022 RE-ORG
Plug 'ZwodahS/vim-trailing-whitespace'

"""""""" Various Git stuffs
"""" Git marks
" Git gutter for displaying changes
" 03 Feb 2022 RE-ORG
Plug 'airblade/vim-gitgutter'

"""" Git Wrapper
" 03 Feb 2022 RE-ORG
Plug 'tpope/vim-fugitive'

"""" Git Browser
" Git browser viewer
" Thu 11:20:06 03 Feb 2022 Do I still use this ?
" 03 Feb 2022 RE-ORG
Plug 'junegunn/gv.vim'

"""" Start screen
" Note: Mainly using this for session mangement
" 03 Feb 2022 RE-ORG
Plug 'mhinz/vim-startify'

" Auto highlight when cursor stop moving
" 03 Feb 2022 RE-ORG
Plug 'ZwodahS/autohighlight.vim'

"""""""" Themes and colorscheme related
" Thu 11:22:24 03 Feb 2022 might want to remove some of these
" 03 Feb 2022 RE-ORG
Plug 'nanotech/jellybeans.vim'
Plug 'sts10/vim-pink-moon'
Plug 'morhetz/gruvbox'
Plug 'guns/xterm-color-table.vim'

" 03 Feb 2022 RE-ORG
Plug 'ryanoasis/vim-devicons'

"""" Specific plugins for neovim and vim
if has('nvim') != 0
    """" lua core
    " 03 Feb 2022 RE-ORG
    Plug 'nvim-lua/popup.nvim'
    " 03 Feb 2022 RE-ORG
    Plug 'nvim-lua/plenary.nvim'

    """" Look at any tag in a popup
    " 03 Feb 2022 RE-ORG
    Plug 'semanticart/tag-peek.vim'

    " A faster version of easy motion
    " Thu 11:40:41 03 Feb 2022
    " Still hoping that it has a / functionality like easy-motion
    " 03 Feb 2022 RE-ORG
    Plug 'phaazon/hop.nvim'

    """" Fuzzy finder viewer
    " Telescope for grep / filesearch etc
    " 03 Feb 2022 RE-ORG
    Plug 'nvim-telescope/telescope.nvim'

    """""""" LSP stuff
    """" Config
    " 03 Feb 2022 RE-ORG
    Plug 'neovim/nvim-lspconfig'
    """" Installer
    " 03 Feb 2022 RE-ORG
    Plug 'williamboman/nvim-lsp-installer'

    """""""" completion engine
    " Plug 'hrsh7th/cmp-buffer'
    " 03 Feb 2022 RE-ORG
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'ZwodahS/cmp-nvim-tags'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'

    """" Snippets
    " 03 Feb 2022 RE-ORG
    Plug 'hrsh7th/vim-vsnip'


    " 03 Feb 2022 RE-ORG
    Plug 'neomake/neomake'

    " 03 Feb 2022 RE-ORG
    Plug 'nvim-lualine/lualine.nvim'

    " 03 Feb 2022 ADDED
    Plug 'kyazdani42/nvim-web-devicons'

    """" File Browser
    " 05 Feb 2022 ADDED
    Plug 'kyazdani42/nvim-tree.lua'

    " 07 Feb 2022 ADDED
    Plug 'folke/trouble.nvim'

    " 07 Feb 2022 DISABLED
    " Mon 14:31:00 07 Feb 2022
    " I really want Shade but I don't like the implementation at the moment.
    " For one, it created a floating window above the current window, which
    " does not allow us to close the window with <C-w>q.
    " There are also bugs (which is actually fixed in my local branch) when
    " closing the entire tab with :tabonly
    " Keeping this here so I don't add it back in again in the future
    " Plug 'sunjon/Shade.nvim'

    """" file browser
    " honorary entries as I have used them for a very long time
    " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'deoplete-plugins/deoplete-tag'

    " Color scheme, only works for neovim
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " https://github.com/folke/tokyonight.nvim/

    " lua tabline
    Plug 'rafcamlet/tabline-framework.nvim'
else
    " Buffer viewer
    Plug 'jeetsukumaran/vim-buffergator'

    "" File browser (if defx is not enabled)
    Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

    " 03 Feb 2022 RE-ORG
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endif

""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
"" Golang
" 03 Feb 2022 RE-ORG
Plug 'fatih/vim-go', { 'for': 'go' }

"" Python
" 03 Feb 2022 RE-ORG
Plug 'vim-scripts/python_match.vim'
"" Python Folding
" 03 Feb 2022 RE-ORG
Plug 'ZwodahS/SimpylFold', { 'for': 'python' }
" only enable flake8 if the file exists in the current directory
if filereadable(".flake8") != 0
    Plug 'nvie/vim-flake8', { 'for': 'python' }
endif
" 03 Feb 2022 RE-ORG
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

"" toml
" 03 Feb 2022 RE-ORG
Plug 'cespare/vim-toml', { 'for': 'toml' }

"" yaml
" 03 Feb 2022 RE-ORG
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }
Plug 'pedrohdz/vim-yaml-folds', { 'for': 'yaml' }

"" Haxe
" 03 Feb 2022 RE-ORG
Plug 'jdonaldson/vaxe', { 'for': 'haxe' }
Plug 'marcweber/vim-haxe-syntax', { 'for': 'haxe' }

"" Typescript
" 03 Feb 2022 RE-ORG
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'


"""""""""""NOT CONFIRMED"""""""""""
""""""""""""""""""""""""Testing""""""""""""""""""""""""
" Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/unicode.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'chrisbra/colorizer'
Plug 'dstein64/vim-startuptime'
"""""""""""""""""""""On the way out""""""""""""""""""""
"" Quick modification of date
Plug 'tpope/vim-speeddating'
"" Calendar vim
Plug 'mattn/calendar-vim'
"" Nice way to use marks
" Plug 'kshenoy/vim-signature'
"" Commenter
"Plug 'luochen1990/rainbow'
