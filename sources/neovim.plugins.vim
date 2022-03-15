"""""""""""""""""""""""CHANGE LOG"""""""""""""""""""""""""""""""
" Sat 15:24:11 26 Feb 2022
" Copied from vim-plug.plugins.vim
""""""""Common""""""""
"""" Undo tree visualization
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
" Ack is slightly faster if I need to search really big repo.
" Plug 'rking/ag.vim' # you got replaced, keeping it here as memorial
" 03 Feb 2022 RE-ORG
Plug 'mileszs/ack.vim'

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

"""" Start screen
" Note: Mainly using this for session mangement
" 03 Feb 2022 RE-ORG
" 14 Feb 2022 to be replaced with Dashboard later
Plug 'mhinz/vim-startify'
" Plug 'glepnir/dashboard-nvim'

" Auto highlight when cursor stop moving
" 03 Feb 2022 RE-ORG
Plug 'ZwodahS/autohighlight.vim'

"""""""" Themes and colorscheme related
" 03 Feb 2022 RE-ORG
Plug 'guns/xterm-color-table.vim'

" 03 Feb 2022 RE-ORG
Plug 'ryanoasis/vim-devicons'

"""""""" LUA Based plugins

" 03 Feb 2022 RE-ORG
Plug 'nvim-lua/popup.nvim'
" 03 Feb 2022 RE-ORG
Plug 'nvim-lua/plenary.nvim'

"""" Look at any tag in a popup
" 03 Feb 2022 RE-ORG
Plug 'semanticart/tag-peek.vim'

"""" Motion
" Note: Easy motion is only used for '/' search as hop doesn't have that yet.
" Thu 20:30:34 27 Jan 2022
" There is currently a bug in easymotion (I think) causing undo tree to break
" Thu 11:40:41 03 Feb 2022
" Still hoping that Hop will get a / functionality like easy-motion
" 03 Feb 2022 RE-ORG
Plug 'Lokaltog/vim-easymotion'
" A faster version of easy motion
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
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'

"""" Snippets
" 03 Feb 2022 RE-ORG
Plug 'hrsh7th/vim-vsnip'

" 15 Feb 2022 ADDED
" Plug 'ZwodahS/lsp_signature.nvim'
Plug 'ray-x/lsp_signature.nvim'

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

"""" Colorscheme
" Color scheme, only works for neovim
" 03 Feb 2022 RE-ORG
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " https://github.com/folke/tokyonight.nvim/

"""" StatusLine and TabLine
" lua tabline
" 13 Feb 2022 ADDED
Plug 'rafcamlet/tabline-framework.nvim' " https://github.com/rafcamlet/tabline-framework.nvim/
" 03 Feb 2022 RE-ORG
Plug 'nvim-lualine/lualine.nvim'
" 03 Feb 2022 ADDED
Plug 'kyazdani42/nvim-web-devicons'

"""" UI related
" 16 Feb 2022 ADDED
Plug 'ZwodahS/nvim-colorizer.lua'

""""""""""""""""""""""""Language plugins""""""""""""""""""""""""
" Sat 15:29:37 26 Feb 2022
" Many plugins are removed when migrated to neovim only conf as I don't use
" those language these days. Add them back later.

""""""""""""" Python
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

"""""""""""" Haxe
" 03 Feb 2022 RE-ORG
Plug 'jdonaldson/vaxe', { 'for': 'haxe' }
Plug 'marcweber/vim-haxe-syntax', { 'for': 'haxe' }

"""""""""""NOT CONFIRMED"""""""""""
Plug 'TimUntersberger/neogit'

""""" WIP
Plug 'ZwodahS/jopvim.nvim'
