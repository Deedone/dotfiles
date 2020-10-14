execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on
set termguicolors

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'vim-airline/vim-airline'
"Plugin 'kovisoft/paredit'
"Plugin 'Shougo/deoplete.nvim'
Plugin 'ervandew/supertab'
"Plugin 'autozimu/LanguageClient-neovim' 
Plugin 'l04m33/vlime', {'rtp': 'vim/'}
Plugin 'Deedone/checkpatch.nvim'
Plugin 'iamcco/markdown-preview.nvim'
"Plugin 'zxqfl/tabnine-vim'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'frazrepo/vim-rainbow'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nmap <C-t> :TagbarToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


set hidden

let g:LanguageClient_serverCommands = {
    \ 'c': ['/usr/bin/clangd','--header-insertion=never'],
    \ 'cpp': ['/usr/bin/clangd','--header-insertion=never'],
    \ }

let g:deoplete#enable_at_startup = 1

let mapleader=" "
nmap  <leader><leader> :nohlsearch<CR>
nmap <Left> :tabp<CR>
nmap <C-j> :tabn<CR>
nmap <C-k> :tabp<CR>
nmap <Right> :tabn<CR>
nnoremap <C-l> :pop<CR>
map <leader>s :NERDTreeToggle<cr>
map <leader>d :TagbarToggle<cr>



"set t_Co=256
set background=dark
set completeopt-=preview
let g:ycm_confirm_extra_conf = 0
"set termguicolors
colorscheme deep-space

"set expandtab
set softtabstop=8
set nu rnu
set lazyredraw 
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set nocscopeverbose

let g:airline_theme='deep_space'
let g:rainbow_active = 1

 let g:vlime_compiler_policy = {"DEBUG": 3}

 let g:SuperTabDefaultCompletionType = "<c-n>"

 let g:checkpatch_path = "/home/mpoturai/src/linux/scripts/checkpatch.pl"
 let g:checkpatch_enabled = 1

 let  g:LanguageClient_diagnosticsList = "Location" 

 ":hi MatchParen ctermbg=lightblue guibg=blue
 let g:XkbSwitchEnabled = 1
 let g:mkdp_browser = 'firefox'
