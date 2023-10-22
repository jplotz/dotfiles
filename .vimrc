execute pathogen#infect()

syntax on
filetype plugin indent on
set nocompatible

colorscheme gruvbox
set background=dark

set hlsearch

"Python
au FileType python setlocal tabstop=4 shiftwidth=4 expandtab

" Text Files
au BufRead,BufNewFile *.txt setlocal tabstop=4 shiftwidth=4 expandtab
au BufRead,BufNewFile *.txt setlocal tw=80 number ruler wrap cursorline
au BufRead,BufNewFile *.txt setlocal colorcolumn=80 spell spelllang=en_us
"au BufRead,BufNewFile *.txt colorscheme austere
au BufRead,BufNewFile *.txt setlocal background=light scrolloff=10
au BufRead,BufNewFile *.txt colorscheme PaperColor

" highlight trailing whitespace
autocmd BufWinEnter <buffer> match Error /\s\+$/
autocmd InsertEnter <buffer> match Error /\s\+\%#\@<!$/
autocmd InsertLeave <buffer> match Error /\s\+$/
autocmd BufWinLeave <buffer> call clearmatches()

" Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au FileType markdown setlocal nomodeline conceallevel=2
au FileType markdown setlocal tabstop=4 shiftwidth=4 expandtab
au FileType markdown setlocal tw=80 number ruler wrap cursorline
au FileType markdown setlocal colorcolumn=80 spell spelllang=en_us
au FileType markdown setlocal background=light scrolloff=10
au FileType markdown colorscheme PaperColor
au FileType markdown let g:markdown_folding=1

" Distraction-Free Writing
noremap <F2> :Limelight!! 0.66<CR>
