" Pathogen package manager
execute pathogen#infect()

" Basic syntax highlighting
syntax on

filetype plugin indent on

" Set leader key to space
let mapleader = "\<Space>"

" Line numbering
set nu

" Turn off text wrapping
set nowrap

" Set tabs to two spaces
set expandtab
set tabstop=2
set shiftwidth=2

" Show tabs and trailing spaces as chars
set list listchars=tab:»-,trail:·,extends:»,precedes:«

" Use <SPACE> + c to highlight the cursor column
hi CursorColumn cterm=NONE ctermbg=235
nnoremap <Leader>c :set cursorcolumn!<CR>

" Change :vs and :sp behavior
set splitbelow
set splitright
