set nocompatible              " required
filetype off                  " required

"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"
"" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
""Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
""Bundle 'Valloric/YouCompleteMe'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'c.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

colorscheme torte 
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Enable folding
 set foldmethod=indent
 set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py,*.cc,*.hh,*.c,*.h,*.cpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

highlight BadWhitespace ctermbg=red guibg=red

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cc,*.hh match BadWhitespace /\s\+$/

set encoding=utf-8

