"
" VUNDLE
"
set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-git.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-surround.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-endwise.git'
Plugin 'Raimondi/delimitMate'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'mattn/emmet-vim.git'
Plugin 'alvan/vim-closetag'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jelera/vim-javascript-syntax.git'
Plugin 'tpope/vim-rails'
Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()            " required
filetype plugin indent on    " required


"
" BASE SETTINGS
"
" Allows you to have multiple buffers open
set hidden
" Lines of code will not wrap to the next line
set nowrap
" Show 3 lines of content around the cursor
set scrolloff=3
" Make backspace behave like other editors
set backspace=indent,eol,start
" Show line numbers
set number
" Enable code folding
set foldenable
" Automatically indent on new lines
set autoindent
" Copy the indentation of the previous line if auto indent doesn't know what
" to do
set copyindent
" Update file on change
set autoread

set autoindent
" Indenting a line with >> or << will indent or un-indent by 4
set shiftwidth=4
" Pressing tab in insert mode will use 4 spaces
set softtabstop=4
" Use spaces instead of tabs
set expandtab
" Highlight matching braces/tags
set showmatch
" Ignore case when searching
set ignorecase
" ...unless there's a capital letter in the query
set smartcase
" Indent to correct location with tab
set smarttab
" Highlight search matches
set hlsearch
" turn on mouse "
set mouse=a
" Search while you enter the query, not after
set incsearch
" Don't make a backup before overwriting a file.
set nobackup
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.
" More undos
set undolevels=1000
" Vim can set the title of the terminal window
set title
" Use a visual indicator instead of a beep
set visualbell
" Or just turn error bells off with this
set noerrorbells
" Show the status line all the time "
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\%{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\%l,%c-%v\ %)%P
" Enable syntax highlighting
syntax enable
" Tell vim that your terminal supports 256 colors
set t_Co=256
" Toggle paste mode with F2
set pastetoggle=<F2>
set list listchars=tab:\ \ ,trail:.
" Use ; instead of : to enter commands, saves a lot of keystrokes in the long run
nnoremap ; :


" Theme settings
syntax enable
set background=dark
colorscheme solarized

" Tabline colors
:hi TabLineFill ctermfg=Black ctermbg=Black
:hi TabLine ctermfg=Black ctermbg=Black
:hi TabLineSel ctermfg=DarkBlue ctermbg=White

" Nerdtree settings
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

" Set leader to 'space'
let mapleader=" "

" Ctrlp options
"" The Silver Searcher
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Set ctrlp quick keys
nmap <leader>p :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>

" Set nerdtree shortcut
nmap <leader>n :NERDTreeToggle<CR>

" Set tabs shorcuts
nmap <leader>tt :tabnew<cr>
nmap <leader>te :tabedit
nmap <leader>tc :tabclose<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tn :tabnext<cr>
nmap <leader>tp :tabprevious<cr>
nmap <leader>tf :tabfirst<cr>
nmap <leader>tl :tablast<cr>
nmap <leader>tm :tabmove


"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_ddO"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()
