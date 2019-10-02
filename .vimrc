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
set foldmethod=indent " folding
set foldnestmax=10   " fold anything with a max nest level of 10
set nofoldenable     " Don't fold by default when opening a file
set foldlevel=2      " Set at least 2 levels of fold open
set foldcolumn=2     " Sets a column to the left which provides information on folds

" NerdTREEToggle
noremap <F7> :NERDTreeToggle<CR>

" Copy to system clipboard
vnoremap <C-y> "*y

" Grep stuff
map <C-G> :vimgrep /<C-R><C-W>/j *<CR>:cope<CR>

" Duplicate lines upwards and downloads
inoremap <C-S-Down> <Esc>yypi
inoremap <C-S-Up> <Esc>yyPi

" Leader
let mapleader = ","

" Mapping to edit vimrc in a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Mapping to toggle relative line numbers
nnoremap <leader><space> :set relativenumber!<cr>

" Save file
nnoremap <leader>w :w<cr>

" Mapping to switch buffers
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>pb :bprev<cr>

" Enable snipmate snippets for UltiSnip
let g:UltiSnipsEnableSnipMate = 1

" Mapping esc to jk in insert mode
" inoremap jk <esc>

" Removing esc
" inoremap <esc> <nop>

set expandtab
map DS :%s/\s\+$// <CR>

set softtabstop=2
set tabstop=2
set shiftwidth=2
set wrap!
set number      " show line number
set nohlsearch  " dont highlight search

set updatetime=100 " update time. git gutter

" Don't use Ex mode, use Q for formatting
map Q gq

" Map keys for maximizing window horizontally
nnoremap <leader>M <C-w>\|

" Mapping for Copy/Paste
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
"  set hlsearch
endif

" If True Colour present, then use the material theme

if has("termguicolors")
  set termguicolors
  set background=dark
  colorscheme material
  let g:material_theme_style = 'palenight'
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
         \ | wincmd p | diffthis

" SnipMate setting
let g:snipMate = {}
let g:snipMate.snippet_version = 1
let g:snipMate.description_in_completion = 1

" Bufferline echo off
let g:bufferline_echo = 0

" IndentLines configuration
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_char = '│'

" UltiSnips setting
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
