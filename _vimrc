" Cameron's VIMRC File!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source $HOME/bundles.vim

" change default font
set guifont=Consolas:h11

" fix indenting; use spaces instead of tabs, auto-indent for detected
" filetypes, etc
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab softtabstop=4
set backspace=indent,eol,start

" some security thing
set modelines=0
" useful lines from 'coming home to vim' blog
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set laststatus=2
set relativenumber " gives relative line numbers from the current line!
set undofile " saves an external undo file for permanent undo history

" search improvments
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" line wrapping shit
set wrap
set textwidth=79
set colorcolumn=85


" remap F1 to ESCAPE so you don't accidentally open HELP
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" remap semicolon to colon so you can call commands without pushing shift
nnoremap ; :

" save all files when you take focus away from vim
au FocusLost * :wa

" enable syntax highlighting
syntax on

" automatically reload vimrc file on save
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" set all copy-paste buffer to just use the windows clipboard. less
" confusing... maybe I'll want to turn it off someday? doubt it
set clipboard=unnamed

" disable auto insertion of comment line precursor when you push enter
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" map the leader to the comma key
let mapleader=","

" hide the stupid gvim toolbar
set guioptions-=T
" hide the vim menu bar too
set guioptions-=m
" hide the nerdtree left scrollbar
set guioptions-=L


" Rainbow Paranthesis customizations and auto-enable
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
call rainbow_parentheses#activate()

" fix font rendering
set renderoptions=type:directx,gamma:1.0,contrast:0.2,level:1.0,geom:1,renmode:5,taamode:1

" change color scheme
let g:airline_theme='PaperColor'
colorscheme PaperColor
set background=light

" show line numbers
set number

" make sure splits appear to the right
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

" Show NERDTree on vim load
map <Leader>nt :NERDTreeToggle<CR>

" Show AIRLINE tabs at the top for each buffer
let g:airline#extensions#tabline#enabled = 1

" set ,bg to quickly toggle back and forth between light and dark colourscheme.
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" set control P to search CWD, not current file's directory
let g:ctrlp_working_path_mode = 'w'

" Allows you to save and resume working sessions!
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr>     " And load session with F3

map <C-Tab> :bnext <cr> " Cycle through the buffers with control-tab

" press ,W to strip all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
