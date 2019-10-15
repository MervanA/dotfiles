"------------------------------------------------------------------------------
ru! defaults.vim                " Use Enhanced Vim defaults
"------------------------------------------------------------------------------
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set showmode                    " show the current mode
set wildmode=list:longest,longest:full   " Better command line completion
"------------------------------------------------------------------------------
" Set the statusline
set statusline=%f               " filename relative to current $PWD
set statusline+=%h              " help file flag
set statusline+=%m              " modified flag
set statusline+=%r              " readonly flag
set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
"------------------------------------------------------------------------------
set t_Co=256              " Use at least 256 colors
"------------------------------------------------------------------------------
set nocompatible
set showcmd
"------------------------------------------------------------------------------
set ignorecase
set spell spelllang=en_us
set autochdir
set autoread
syntax on
syntax enable
set paste
"------------------------------------------------------------------------------
set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
"------------------------------------------------------------------------------
set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces
"------------------------------------------------------------------------------
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
"------------------------------------------------------------------------------
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"------------------------------------------------------------------------------
" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>


