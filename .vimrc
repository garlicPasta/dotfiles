" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" ================ General Config ====================


set background=dark
set tags=./tags;/
let g:auto_save = 1

:au FocusLost * :wa             "Auto Save when change focus
set colorcolumn=80
set guifont=Terminus
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set guioptions=
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
set hlsearch
"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/Vundle.vim"))
  source ~/.vim/Vundle.vim
endif

"Change vim Cursor in insert Mode

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

autocmd FileType lua call SetLovePrefs()

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" ================ Custom Settings ========================
vmap <C-r> "sy:%s/<C-R>s/
map <C-p> "0p

" ================ vundle Settings ========================
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<enter>
autocmd vimenter * NERDTree

"Bundle 'scrooloose/syntastic'
"Bundle 'vim-scripts/c.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-surround'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'
Bundle "Rip-Rip/clang_complete"
Bundle "vim-scripts/a.vim"
Bundle "octol/vim-cpp-enhanced-highlight"
Bundle "moll/vim-node"
Bundle "marijnh/tern_for_vim"
"Bundle "ahayman/vim-nodejs-complete"
"Bundle 'maksimr/vim-jsbeautify'
"Bundle "pangloss/vim-javascript"
"Bundle "Raimondi/delimitMate"
Bundle "xolox/vim-lua-ftplugin"
Bundle "xolox/vim-misc"
Bundle "907th/vim-auto-save"
Bundle "vim-ruby/vim-ruby"
Bundle "kchmck/vim-coffee-script"
Bundle "embear/vim-localvimrc"
Bundle "rust-lang/rust.vim"



" ================Vundle Stuff done========================
call vundle#end()
filetype plugin indent on

" ================Syntastic Settings ========================
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let b:syntastic_cpp_cflags = ' -I/usr/include/qt -I/usr/include/qt/QtGui -I/usr/include/qt/QtCore'

" ================ Python-Mode Settings ========================

" ================ YCM Settings ========================


" ================ delimitMate Settings ========================

let delimitMate_expand_cr=1

" ================ My functions ========================

set conceallevel=0

"function SetLovePrefs()
"  setlocal dictionary-=~/.vim/love-dictionary/love.dict dictionary+=~/.vim/love-dictionary/love.dict
"  setlocal iskeyword+=.
"endfunction

" check for local vimrcs
if filereadable(".vim.custom")
    so .vim.custom
endif

" ================CustomMappings========================
autocmd FileType coffee nnoremap <F11> :CoffeeCompile<CR>
