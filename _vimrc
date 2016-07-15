" Cameron's VIMRC File!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" apparently this is required for improved mode
set nocompatible

" change default font
set guifont=Consolas:h11


filetype off	" just do this for the vundle installer.

" BEGIN VUNDLE SECTION

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Visual indentation indicators
Plugin 'Yggdroot/indentLine'

" Simplest rainbow brackets plugin I found
Plugin 'junegunn/rainbow_parentheses.vim'

" Nice light background colour scheme
Plugin 'NLKNguyen/papercolor-theme'

Plugin 'summerfruit.vim'

" Markdown stuff - commented out for now because I think it was messing things up...
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'

" AIRLINE!
Plugin 'vim-airline/vim-airline'

" Fuzzy file searching
Plugin 'ctrlpvim/ctrlp.vim'

" Surround with plugin
Plugin 'tpope/vim-surround'

" Nerd-commenter to make things commented!
Plugin 'scrooloose/nerdcommenter'

" Nerdtree for viewing the file structure
Plugin 'scrooloose/nerdtree'

" Apparently the best GIT plugin
Plugin 'tpope/vim-fugitive'

" Plaintasks like sublime
Plugin 'elentok/plaintasks.vim'

call vundle#end()            " required

" END VUNDLE SECTION

" fix indenting; use spaces instead of tabs, auto-indent for detected
" filetypes, etc
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab softtabstop=4
set backspace=indent,eol,start


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
