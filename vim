set nocompatible
filetype plugin indent on
set nu
syntax enable
let g:solarized_termcolors=256
colorscheme solarized
"
if has('gui_running')
        set background=light
else
        set background=dark
        set term=screen-256color
endif
set clipboard=unnamedplus
set nu
set ruler
" Use visual bell instead of beeping when doing something wrong
set visualbell
" Enable use of the mouse for all modes
set mouse=a
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
set laststatus=2
set incsearch
set ignorecase
set smartcase
"EOF
