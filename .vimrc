set nocompatible
set encoding=utf-8 nobomb

call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'fatih/vim-go'
Plug '/usr/local/opt/fzf' " Must come before fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on

" enable ruler and line numbers
set ruler
set number

" spaces and tabs
set expandtab
set shiftwidth=2
set tabstop=2

" airline config
set noshowmode
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_skip_empty_sections=1

" make backspace work like in most editors
set backspace=indent,eol,start

" wrap text
set tw=100
set formatoptions+=t

" ignore case of searches
set ignorecase

" highlight dynamically as pattern is typed
set incsearch

" highlight search keywords
set hlsearch

" show the filename in the window titlebar
set title

" show the (partial) command as it’s being typed
set showcmd

" don’t add empty newlines at the end of files
set noeol

" start scrolling three lines before the horizontal window border
set scrolloff=3

" disable cursorline in insert mode
set cul
autocmd InsertEnter,InsertLeave * set nocul!

" Don't wrap lines
set nowrap

" Color scheme
syntax enable
set background=dark
colorscheme solarized

" Share the system clipboard
set clipboard=unnamed

" Allow mouse usage
set mouse=a

" No swap/backup
set noswapfile
set nobackup

" Allow switching away from unsaved buffers
set hidden

" Automatically load changes to a file
set autoread

" Show whitespace
" set list
"
" Dot for trailing characters
" set listchars=trail:·


" Strip trailing spaces
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()


let mapleader = ','

" Quick switch to normal moke
inoremap kj <esc>

" Enter Ex mode
nnoremap ; :

" Buffer-wide search/replace
nnoremap <leader>s :%s/

" Visual search/replace
vnoremap <leader>s :s/

" Clear search
nnoremap <silent> <space> :nohlsearch<Bar>:echo<cr>""

" Ack project
nnoremap <Leader>a :Ack!<Space>

" Fuzzy file finder
nnoremap <leader>f :FZF<cr>

" Toggle NERDTree
nnoremap <silent> \ :NERDTreeToggle<cr>

" Reload configuration
nnoremap <silent> <leader>rv :source $MYVIMRC<cr>

" Close buffer but not split
nmap ,x :b#<bar>bd#<CR>

if has("gui_running")
  set guifont=FiraMonoForPowerline-Medium:h14
  set guioptions=r
endif
