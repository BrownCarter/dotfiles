"required before Vundle initialization
set nocompatible        " disable compatibility mode with vi
filetype off            " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'spacevim/spacevim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'rip-rip/clang_complete'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
call vundle#end()

"""" Basic Behavior
set number              " show line numbers
set noswapfile          " disable the swap file
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk


"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
colorscheme  gruvbox " good colorschemes: murphy, slate, molokai, badwolf, solarized
set t_Co=256
" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
set termguicolors
syntax on

filetype plugin indent on


"""" Tab settings
set clipboard=unnamedplus
set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces
set backspace=indent,eol,start
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
set completeopt+=longest
"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set nolist
" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>

"path to directory where library can be found
filetype plugin on
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:clang_library_path='/usr/lib/llvm-11/lib/libclang.so.1'
let g:clang_user_options='|| exit 0'
let g:clang_complete_patterns = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_complete_auto = 1
set completeopt=menu,longest
let g:clang_complete_copen = 1

"""" Miscellaneous settings that might be worth enabling
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

"Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"set cursorline         " highlight current line
"set background=dark    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim
set bg=dark
