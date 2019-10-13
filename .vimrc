" Setting some decent VIM settings for programming

ru! defaults.vim                " Use Enhanced Vim defaults
set mouse=                      " Reset the mouse setting from defaults
aug vimStartup | au! | aug END  " Revert last positioned jump, as it is defined below
let g:skip_defaults_vim = 1     " Do not source defaults.vim again (after loading this system vimrc)
"------------------------------------------------------------------------------

set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
set wildmode=list:longest,longest:full   " Better command line completion
"------------------------------------------------------------------------------

" Show EOL type and last modified timestamp, right after the filename
" Set the statusline
set statusline=%f               " filename relative to current $PWD
set statusline+=%h              " help file flag
set statusline+=%m              " modified flag
set statusline+=%r              " readonly flag
set statusline+=\ [%{&ff}]      " Fileformat [unix]/[dos] etc...
set statusline+=\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})  " last modified timestamp
set statusline+=%=              " Rest: right align
set statusline+=%l,%c%V         " Position in buffer: linenumber, column, virtual column
set statusline+=\ %P            " Position in buffer: Percentage
"------------------------------------------------------------------------------

set t_Co=256              " Use at least 256 colors

"------------------------------------------------------------------------------

set number
set relativenumber
"------------------------------------------------------------------------------

set nocompatible
set showcmd
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"------------------------------------------------------------------------------

set cursorline
set linebreak
set ruler
set hlsearch
set incsearch
set ignorecase
set spell spelllang=en_us
set undofile
set autochdir
set backupdir=~/.vim/backup/
set undodir=~/.vim/undo/
set visualbell
set autoread
set wildmenu
set wildmode=longest:list,full
syntax on
syntax enable
set paste
"------------------------------------------------------------------------------
