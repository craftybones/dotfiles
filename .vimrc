execute pathogen#infect()

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup        " do not keep a backup file, use versions instead

" enable UTF-8 stuff
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set history=50    " keep 50 lines of command line history
set ruler            " show the cursor position all the time
set showcmd          " display incomplete commands
set incsearch        " do incremental searching
set wildmenu         " Add wildcards for completion while loading files
set modeline         " Set modeline so that you can see some info 
set ls=2             " set two lines for info

" NerdTREEToggle
map <F7> :NERDTreeToggle<CR>
map <F8> :FufBuffer<CR>
map <F9> :FufFile<CR>
map <M> ma

" Grep stuff
map <C-G> :vimgrep /<C-R><C-W>/j *<CR>:cope<CR>

set expandtab
map DS :%s/\s\+$// <CR>

set softtabstop=2
set tabstop=2
set shiftwidth=2
set wrap!
set number      " show line number
set nohlsearch  " dont highlight search
let g:templatePath = "/home/ben/.vim/templates"

" Don't use Ex mode, use Q for formatting
map Q gq

" Mapping for Copy/Paste
"imap  sahi.example.com " breaks ie strg+v strg+m
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
"  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent        " always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
         \ | wincmd p | diffthis//ap
