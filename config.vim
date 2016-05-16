execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = "\<Space>"

set nu
set nowrap

set expandtab
set tabstop=2
set shiftwidth=2

set list listchars=tab:»-,trail:·,extends:»,precedes:«

hi CursorColumn cterm=NONE ctermbg=235
hi CursorLine cterm=NONE ctermbg=235
nnoremap <Leader>c :set cursorcolumn!<CR>
