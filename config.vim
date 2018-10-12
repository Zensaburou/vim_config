" Pathogen package manager
execute pathogen#infect()

" Basic syntax highlighting
syntax on

filetype plugin indent on

" Set leader key to space
let mapleader = "\<Space>"

" Hybrid line numbering
set nu rnu

" Turn off text wrapping
set nowrap

" Set default tab to four spaces
set shiftwidth=4
set tabstop=4

" Show tabs and trailing spaces as chars
set list listchars=tab:»-,trail:·,extends:»,precedes:«

" Use <SPACE> + c to highlight the cursor column
hi CursorColumn cterm=NONE ctermbg=237
hi CursorLine cterm=NONE ctermbg=237
nnoremap <Leader>c :set cursorcolumn! cursorline! <CR>

" Change :vs and :sp behavior
set splitbelow
set splitright

" Navigating splits
nnoremap <Leader>h <C-W><C-H>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>

" Opening splits
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>v :vs<CR>

" Vim-rspec shortcuts
map <Leader>t :call RunAllSpecs()<CR>
map <Leader>r :call RunCurrentSpecFile()<CR>

" Toggle between absolute and relative numbers
nnoremap <Leader>n :set nu<CR>
nnoremap <Leader>N :set relativenumber<CR>

" Switch to previously edited buffer
nnoremap <Leader>b :b#<CR>

" Scroll up and down
nnoremap <Leader>u <C-u>
nnoremap <Leader>d <C-d>

" Copy current file path to clipboard (uses pbcopy)
nnoremap <Leader>f :!echo -n % \| pbcopy<CR>

" Use ctrl + l to exit insert mode
inoremap <C-l> <Esc>

" Use the_silver_searcher for ctrl p searches
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
