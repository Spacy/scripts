" Guixing<guixing@staff.sina.com.cn>
" settings for vim
set nocompatible " explicitly get out of vi-compatible mode
syntax on " syntax highlighting on
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'L9'
Plugin 'taglist.vim'
Plugin 'project.tar.gz'
Plugin 'mattn/emmet-vim' "for web develop
Plugin 'spacy/molokai' " color mode

" The sparkup vimscript is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...
call vundle#end()
filetype plugin indent on     " required
set backspace=indent,eol,start " make backspace a more flexible
set fileformats=unix,dos,mac " support all three, in this order
set hidden " you can change buffers without saving
set iskeyword+=_,$,@,%,# " none of these are word dividers
set noerrorbells " don't make noise
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
set wildmenu " turn on command line completion wild style
set wildignore=*.dll,*.o,*.obj,*.exe,*.pyc,*.jpg,*.gif,*.png,*.aux,*.class
set wildmode=list:longest " turn on wild mode huge list
set incsearch " BUT do highlight as you type you search phrase
set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines betweens rows
set listchars=tab:>-,trail:- " show tabs and trailing
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set nostartofline " leave my cursor where it was
set novisualbell " don't blink
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
set sidescrolloff=10 " Keep 5 lines at the size
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set expandtab " no real tabs please!
set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
set ignorecase " case insensitive by default
set infercase " case inferred by default
"set nowrap " do not wrap line
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase " if there are caps, go case-sensitive
set shiftwidth=4 " auto-indent amount when using cindent,
set softtabstop=4 " when hitting tab or backspace, how many spaces
set tabstop=8 " real tabs should be 8, and they will show with set list on
noremap <S-space> <C-b>
noremap <space> <C-f>
au BufRead,BufNewFile *.wsgi set filetype=python
au BufRead,BufNewFile *.tpl set filetype=html
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 softtabstop=2
au BufRead,BufNewFile *.py,*.wsgi set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
au BufRead,BufNewFile,BufWrite *.php, set shiftwidth=4 softtabstop=4 tabstop=4 expandtab 
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile,BufWrite *.php, imap <F12> /**<CR>@file<TAB><C-R>=expand("%:t")<CR><CR>@desc<CR>@author<TAB>Spacy(xxx@xxx.com)<CR>@date<TAB><C-R>=strftime(
"%Y-%m-%d %H:%M")<CR><CR>/

" set taglist
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

" set Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_mode='a'
autocmd FileType html,css,tpl EmmetInstall


