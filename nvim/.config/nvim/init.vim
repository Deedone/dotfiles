set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath





filetype plugin indent on
syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set background=dark
set clipboard=unnamedplus
set expandtab
colorscheme deep-space


"i surender vim plug here
call plug#begin("~/.vim/plugins")
	Plug 'tyrannicaltoucan/vim-deep-space'
  Plug 'andreshazard/vim-freemarker' 
  Plug 'leafgarland/typescript-vim'
	Plug 'digitaltoad/vim-pug'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'scrooloose/nerdtree'
	Plug 'luochen1990/rainbow'
	Plug 'vim-airline/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'rust-lang/rust.vim'
	"Plug 'enricobacis/vim-airline-clock'
	"Plug 'leafgarland/typescript-vim'
	Plug 'editorconfig/editorconfig-vim'
	"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	"Plug 'calviken/vim-gdscript3'
	Plug 'ervandew/supertab'
	"Plug 'tweekmonster/deoplete-clang2'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer --clang-completer --racer-completer' }
	Plug 'pangloss/vim-javascript'
	"Plug 'mxw/vim-jsx'
	"Plug 'mattn/emmet-vim'
	Plug 'w0rp/ale'
	"Plug 'dag/vim-fish'
	Plug 'lervag/vimtex'
	Plug 'lyokha/vim-xkbswitch'
	"Plug 'kovisoft/slimv'

call plug#end()


let g:ale_linters = {'rust': ['cargo']}

set number relativenumber
set hlsearch
set history=150
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set nowrap
set showcmd
set completeopt-=preview
set cmdheight=1
set laststatus=2
set noshowmode
set scrolloff=15
set ttyfast
set conceallevel=1
set undodir=/home/ddone/.config/nvimundo
set undofile

" deoplete tab-complete

let g:airline_theme='deep_space'
let g:airline_powerline_fonts = 1
let g:rainbow_active=1
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let mapleader=" "
let g:ycm_rust_src_path = '~/Code/Rust/rust/src'
"let g:ycm_min_num_of_chars_for_completion = 5
let g:XkbSwitchEnabled = 1
let g:deoplete#enable_at_startup = 0
let g:ycm_filetype_blacklist = {"gdscript3":1}
 
"remaps here
nmap  <leader><leader> :nohlsearch<CR>
map <leader>s :NERDTreeToggle<cr>

noremap <Up> :tabnew<CR>
noremap <Down> :tabc <CR>
noremap <Left> :tabp <CR>
noremap <Right> :tabn <CR>

command Q :wq
command W :w

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Open vim on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"Autoopen cwd if no path speciifed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd FileType gdscript3 imap <c-o> <c-x><c-o>| inoremap <c-p> <c-n>

	"call deoplete#custom#option({
    "\ 'auto_complete_delay': 200,
    "\ 'smart_case': v:true,
    "\ 'min_pattern_length': 5,
    "\ })
"autoopen on new tabs


