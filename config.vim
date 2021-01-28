" Pathogen package manager
execute pathogen#infect()

" Default shell
set shell=zsh

" Basic syntax highlighting
syntax on
colo desert

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

" Replace all occurrances of word under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

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

" Toggle between absolute and relative numbers
nnoremap <Leader>n :set nu<CR>
nnoremap <Leader>N :set relativenumber<CR>

" Switch to previously edited buffer
nnoremap <Leader>b :b#<CR>

" Scroll up and down
nnoremap <Leader>u <C-u>
nnoremap <Leader>d <C-d>

" Copy current file path to clipboard (uses pbcopy)
nnoremap <Leader>f :silent !echo -n % \| pbcopy<CR>:redr!<CR>

" Open current file in github
nnoremap <Leader>go :silent ! echo -n %:p \| sed 's/.*apps\/github/https:\/\/github.com\//' \| sed 's/\//\/blob\/master\//6' \| xargs open<CR>:redr!<CR>

" Use ctrl + l to exit insert mode
inoremap <C-l> <Esc>

" Use the_silver_searcher for ctrl p searches
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Vim-go auto-imports in addition to linting on save
let g:go_fmt_command = "goimports"

" Run linter on saving a python file
" autocmd BufWritePost *.py silent exec '!black %' | silent redraw!
autocmd BufWritePost *.py silent exec '!autopep8 --in-place --aggressive --aggressive %' | silent redraw!

" Run linter on saving a ruby file
" autocmd BufWritePost *.rb silent exec '!rubocop --safe-auto-correct %' | silent redraw!

" Run linter
map <Leader>; :silent !rubocop --safe-auto-correct %<CR>:redr!<CR>

" Running shell commands
map <Leader>e :!
