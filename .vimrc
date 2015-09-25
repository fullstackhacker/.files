"Simple vimrc that I give to people just starting to use Vim."
"Lines beginning with a double quote are comments."

" Basic settings
set nocompatible "Fixes old Vi bugs
syntax on
set backspace=2 "Makes backspace work
set history=500 "Sets undo history size
set ruler "Sets up status bar
set laststatus=2 "Always keeps the status bar active
set number "Turns on line numbering
set t_Co=256 "Sets Vim to use 256 colors
colorscheme molokai

" Indentation settings
set tabstop=4 "Sets display width of tabs
set shiftwidth=4 "Sets indentation width
set autoindent "Turns on auto-indenting
set smartindent "Remembers previous indent when creating new lines
"
"Choose between tabs and spaces for indentation by uncommenting one of
"these two. Expand for spaces, noexpand for tabs:"
set expandtab
set mouse=a 

" visual stuff
set cursorline "Horizontal Current Line
set cursorcolumn "Verticle Current Line
hi CursorLine cterm=None ctermbg=darkgray ctermfg=white


" Search settings
set hlsearch "Highlights search terms
set showmatch "Highlights matching parentheses
set ignorecase "Ignores case when searching
set smartcase "Unless you put some caps in your search term
set incsearch "Search as things are entered

" Key mappings
"Use jj instead of escape in insert mode
inoremap jj <Esc>`^

"Turn on plugin & indentation support for specific filetypes
" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Create a plugged folder if it doesn't exist

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute 'mkdir -p ~/.vim/plugged'
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'captbaritone/molokai'

" Fuzzy file opener
Plug 'kien/ctrlp.vim'

" Split navigation that works with tmux
Plug 'christoomey/vim-tmux-navigator'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

filetype plugin indent on                   " required!
call plug#end()
