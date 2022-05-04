""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @ZwodahS
"
" github/zwodahs
"
" vimfile source : https://github.com/ZwodahS/vimfiles
" vim tips : https://www.reddit.com/r/vim/wiki/vimrctips
"
" Fri 16:29:35 25 Feb 2022
" Begin Migration from init.vim to init.lua
" init.vim is copied from vimrc to now only work for neovim
" functions to be slowly moved to lua and eventually init.vim will be convert
" to init.lua when the time comes
"
" We will still be using vim-plug for now until we switch .lua
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick migration guide
" set xxx -> vim.[scope].xxx =
" let g:xxx -> vim.g.xxx =
"
" Another good repo https://github.com/bryant-the-coder/NvHack
"
" TODO:
" 1. Rename conf -> core

" set variables

" for some reason has("termguicolors") was wrongly detected in server, need to
" figure out why
set termguicolors
let $vim_home=expand('~/.vim')
let $vim_rc=$vim_home."/init.vim"
let $sources=$vim_home."/sources"
let $vim_plug_file=$vim_home."/sources/neovim.plugins.vim"
let g:vim_home = expand('~/.vim')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For vim-plug
call plug#begin($vim_home."/installed_plugins")
" source all the plugins
source $vim_plug_file
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=119,120
""" color scheme selection

" load settings
" Fri 16:38:41 25 Feb 2022
" Slowly move these settings to settings.lua
lua require('conf.settings')
lua require('conf.theme')
lua require('conf.lsp')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" For tabbing (default tabbing)
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" set file type for some stuffs
augroup filetypedetect
    autocmd BufRead,BufNewFile .gitignore set filetype=conf.gitignore
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.todo set filetype=todo
    autocmd BufRead,BufNewFile *.zdoc set filetype=zdoc
    autocmd BufRead,BufNewFile *.jop.md set filetype=zdoc
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Edit important files
" open vimrc
nnoremap <leader>vfv :view $vim_rc<CR>
" open plugins
nnoremap <leader>vfp :view $vim_plug_file<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Windowing (the mappings are in settings.lua)
" overwrite the default split direction
set splitbelow
set splitright
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show cursor line and column
set cursorline
set cursorcolumn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" complete opt
set completeopt=menuone,noselect
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Misc
" generate a random sha and put into buffer
nnoremap <silent> <leader>rs :let @"=system('echo -n $(date 2>/dev/null\|shasum 2>/dev/null\|cut -d " " -f 1)') <CR>
if (filereadable(".gen_tags.sh"))
    " generate tags
    nnoremap <silent> <leader>gt :! ./.gen_tags.sh<CR>
    " auto generate tags no longer necessary after LSP ?
    " autocmd BufWritePost * silent :!./.gen_tags.sh \&
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Macros
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Plugins configurations
" These are common to both vim and neovim, so we will keep them as .vim and
" source them instead
let g:python3_host_prog=$vim_home."/venv3/bin/python"

source $sources/autohighlight.vim
source $sources/windowswap.vim
source $sources/git-gutter.vim
source $sources/ack.vim
source $sources/startify.vim
source $sources/trailing-whitespace.vim

" using both ctrlp and telescope, but mapping ctrlp to <leader>p instead
" in the case where vim is use, then ctrlp is mapped to cltrp
source $sources/ctrlp.vim
" Easy motion is used for / search as hop doesn't do that as well
source $sources/easymotion.vim
source $sources/vsnip.vim

lua require('conf.hop')
lua require('conf.telescope')
lua require('conf.undotree')
lua require('conf.nvim-cmp')
lua require('conf.tag')
lua require('conf.jopvim')
lua require('conf.nvim-tree')
lua require('conf.lines')
lua require('test.others')

"lua require('joplin').fetchNotesIndex()

source $sources/nvim-tree.vim
source $sources/colorizer.vim
source $sources/vaxe.vim
" Non-plugin
source $sources/interesting_words.vim
source $sources/flake8-gutter.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Custom date stuffs
" Provide some syntax stuffs that is common to all language
" Mon 13:34:20 20 Sep 2021
augroup syntaxchange
    autocmd Syntax * syn match ZDatetime "\(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun\) \(\d\d:\d\d:\d\d\) \d\+ \(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) \d\d\d\d"
    autocmd Syntax * syn keyword ZStop ISTOPHERE
    autocmd Syntax * syn keyword ZSpecial Assert
    autocmd Syntax * syn match ZCommentSpecial1 "@fixme"
    autocmd Syntax * syn match ZCommentSpecial1 "@hack"
    autocmd Syntax * syn match ZCommentSpecial1 "@todo"
    autocmd Syntax * syn match ZCommentSpecial2 "@idea"
    autocmd Syntax * syn match ZCommentSpecial2 "@future"
    autocmd Syntax * syn match ZCommentSpecial2 "@thoughts"
    autocmd Syntax * syn match ZCommentSpecial2 "@balance"
    autocmd Syntax * syn match ZCommentSpecial2 "@question"
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Unknown/TBC/Deprecating
let g:python_highlight_all = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" TESTING STUFFS BEFORE PUTTING THEM IN SOURCE
" Table mode
let g:table_mode_corner='|'
" Mac Vim Default font
set guifont=FiraCode\ Nerd\ Font\ Mono:h11
" Always keep the split resized equally, only applies to file via *.*
autocmd WinEnter *.* 130 wincmd |
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Machine Specific Configuration
" for config that are machine specfic
" This hash is for project specific vim file, incase some project accidentally have a file that
" is named in the same way or someone trying to run this on my machine via an ext-repo
" this hash in theory prevents it
let g:project_hash=''
source $sources/.local.vim " project hash is provided in here
" source directory specific file.
" This is dangerous when opening new repo from unknown origin so we put a hash
" that is local to the machine that is never committed.
let $localfile=join([getcwd(), "/.project.", g:project_hash, ".vim"], '')
if (g:project_hash != '' && filereadable($localfile))
    source $localfile
    let g:project_file = 1
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
