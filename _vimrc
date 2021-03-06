" Cameron's VIMRC File!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source $HOME/bundles.vim

" change default font
set guifont=Powerline\ Consolas:h11

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
set undodir=$HOME/.vim/undo// "puts the undo file in a central folder
" move backup and undo files to a central folder
:set directory=$HOME/.vim/swapfiles//

" search improvments
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

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
" I turned it off!!!
"set clipboard=unnamed

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
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
colorscheme gruvbox

" show line numbers
set number

" make sure splits appear to the right
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" closes all buffers out
nnoremap <Leader>bc :bufdo bd<CR>

" nerd tree leader commands 
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>ncd :NERDTreeCWD<CR>

" Show AIRLINE tabs at the top for each buffer
let g:airline#extensions#tabline#enabled = 1

" set ,bg to quickly toggle back and forth between light and dark colourscheme.
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" set control P to search CWD, not current file's directory
let g:ctrlp_working_path_mode = 'w'

" Allows you to save and resume working sessions!
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr>     " And load session with F3

nnoremap <C-Tab> :bnext <cr> " Cycle through the buffers with control-tab

" press ,W to strip all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" awesome shortcut to instantly open _vimrc in a vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" open a vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

" automatically jump to end of pasted text
nnoremap p p`]

" enable omni completion
set omnifunc=syntaxcomplete#Complete
" make a bold popup menu
highlight Pmenu gui=bold
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"  

" ctrlP ignore jekyll build folder
let g:ctrlp_custom_ignore = '_site'

" fix MD files to be recognized as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" fix ASPX files to be recognized as plain html
autocmd BufNewFile,BufRead *.aspx set filetype=html

" maximize on opening
au GUIEnter * simalt ~x

" supertab customization
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]

" folding stuff
set nofoldenable " don't start with everything folded!
set foldmethod=indent
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR> "space toggles folds

" disable the flashing error thing
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

" Open chrome for markdown preview

autocmd BufEnter *.md exe 'noremap <F5> :silent !start chrome.exe %<CR>'

" Run python file in python (and save automatically)
autocmd BufEnter *.py exe 'noremap <F5> :w<CR>:!python %<CR>'

" Configure Jekyll plugin
let g:jekyll_post_dirs = ['_drafts']
let g:jekyll_post_extension = '.md'
let g:jekyll_post_template =  [
  \ '---',
  \ 'title: "JEKYLL_TITLE"',
  \ '---',
  \ '']

let g:ConqueTerm_ReadUnfocused = 1

" trying a way to jump from html to css

function! JumpToCSS()
  let id_pos = searchpos("id", "nb", line('.'))[1]
  let class_pos = searchpos("class", "nb", line('.'))[1]

  if class_pos > 0 || id_pos > 0
    if class_pos < id_pos
      execute ":vim '#".expand('<cword>')."' **/*.css"
    elseif class_pos > id_pos
      execute ":vim '.".expand('<cword>')."' **/*.css"
    endif
  endif
endfunction

nnoremap <F9> :call JumpToCSS()<CR>
" fix the grep for windows use
set grepprg=grep\ -nH

" can't remember why I put this line below, maybe for transparency? leave it
"autocmd VimEnter * hi Normal ctermbg=none

" vim-markdown options
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 0

" c# stuff =========================================================================
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
set noshowmatch "apparently helps speed up omnicomplete
"set completeopt=longest,menuone,preview
"let g:OmniSharp_want_snippet=1
set splitbelow " move documentation to the bottom
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
    " build the solution when you push f5
    autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()
    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.
    autocmd FileType cs nnoremap <F12> :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>
augroup end

" rename with dialog
nnoremap <leader>nm :OmniSharpRename<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
"===================================================================================

"" syntastic beginner recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
