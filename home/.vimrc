" This is Nicholas Vitovitch's .vimrc file

""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set tabstop=2
set shiftwidth=2
set autoindent
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
set nu
set textwidth=80
set colorcolumn=-2
highlight ColorColumn ctermbg=green guibg=orange
