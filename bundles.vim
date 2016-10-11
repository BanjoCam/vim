" bundles.vim
" a separate file to contain listings for all the vundle plugins!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" apparently this is required for improved mode
set nocompatible

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
" DISABLED BECAUSE IT NOTICABLY SLOWS THINGS DOWN!
"Plugin 'Yggdroot/indentLine'

" Simplest rainbow brackets plugin I found
Plugin 'junegunn/rainbow_parentheses.vim'

Plugin 'sickill/vim-monokai'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'tpope/vim-vividchalk'
Plugin 'vim-scripts/Lucius'
Plugin 'summerfruit.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

" Markdown stuff - commented out for now because I think it was messing things up...
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" AIRLINE!
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

" Repeat surrounds with .
Plugin 'tpope/vim-repeat'

" autocomplete suggestion stuff!
"Plugin 'ajh17/VimCompletesMe'
Plugin 'ervandew/supertab'
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" auto completion on brackets
Plugin 'jiangmiao/auto-pairs'

" git changes near the line numbers
Plugin 'airblade/vim-gitgutter'
" two plugins to run gitgutter in the background. Also gives fullscreen!
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'


" open in browser
Plugin 'tyru/open-browser.vim'

" manage your jekyll posts
Plugin 'parkr/vim-jekyll'

" run a command line inside of vim!
Plugin 'lrvick/Conque-Shell'
Plugin 'vim-scripts/Conque-GDB'

" try to enable transparent vim background
"Plugin 'mattn/vimtweak'
"Plugin 'mattn/transparency-windows-vim'

" incrementing columns of numbers
Plugin 'vim-scripts/VisIncr'

" improved vim javascript?
Plugin 'pangloss/vim-javascript'
" Vue highlighting
Plugin 'posva/vim-vue'

" C-Sharp stuff
Plugin 'OmniSharp/omnisharp-vim'
" allows omnisharp engine to be loaded automatically
Plugin 'tpope/vim-dispatch'
" allows display of code errors (not just for c#)
Plugin 'scrooloose/syntastic'

call vundle#end()            " required



" END VUNDLE SECTION


