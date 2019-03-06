set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath


if &shell =~# 'fish$'
	    set shell=sh
endif

filetype plugin indent on
syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set background=dark
colorscheme deep-space


"i surender vim plug here
call plug#begin("~/.vimplugins")
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'scrooloose/nerdtree'
	Plug 'luochen1990/rainbow'
	Plug 'vim-airline/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'enricobacis/vim-airline-clock'
	Plug 'leafgarland/typescript-vim'
	Plug 'editorconfig/editorconfig-vim'
	"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	"Plug 'neomake/neomake'
	"Plug 'Shougo/denite.nvim'
	"Plug 'tweekmonster/deoplete-clang2'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer --clang-completer --racer-completer' }
	Plug 'pangloss/vim-javascript'
	Plug 'mxw/vim-jsx'
	Plug 'mattn/emmet-vim'
	Plug 'w0rp/ale'
	Plug 'dag/vim-fish'

call plug#end()


let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_javascript_eslint_options = '--jsx'


let g:user_emmet_leader_key='<C-x>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

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

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:airline_theme='deep_space'
let g:airline_powerline_fonts = 1
let g:rainbow_active=1
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let mapleader=" "
let g:ycm_rust_src_path = '~/Code/Rust/rust/src'
 
"remaps here
nmap  <leader><leader> :nohlsearch<CR>
map <leader>s :NERDTreeToggle<cr>
nnoremap <leader>e :SyntasticCheck<CR>
nnoremap <leader>g :Goyo<CR>

noremap <Up> :tabnew<CR>
noremap <Down> :tabc <CR>
noremap <Left> :tabp <CR>
noremap <Right> :tabn <CR>

command Q :wq

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Open vim on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"Autoopen cwd if no path speciifed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autoopen on new tabs


