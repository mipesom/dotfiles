set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/Shougo/unite.vim'
" Plugin 'https://github.com/klen/unite-radio.vim'
Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'https://github.com/Shougo/vimproc.vim'
Plugin 'https://github.com/davidhalter/jedi-vim/'
" Plugin 'https://github.com/klen/python-mode'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/pangloss/vim-javascript'
" Plugin 'https://github.com/JulesWang/css.vim'
Plugin 'https://github.com/fremff/vim-css-syntax'
" Plugin 'https://github.com/hail2u/vim-css3-syntax'
Plugin 'https://github.com/ap/vim-css-color'
Plugin 'https://github.com/othree/html5-syntax.vim'
Plugin 'https://github.com/othree/html5.vim'
Plugin 'https://github.com/alvan/vim-closetag'
" Plugin 'https://github.com/farfanoide/vim-kivy'
Plugin 'https://github.com/marijnh/tern_for_vim'
" Plugin 'https://github.com/amix/vim-zenroom2'
" Plugin 'https://github.com/junegunn/goyo.vim'
" Plugin 'https://github.com/Rip-Rip/clang_complete'
" Plugin 'https://github.com/scrooloose/syntastic'
" Plugin 'https://github.com/benmills/vimux'
" Plugin 'https://github.com/vim-ruby/vim-ruby'
Plugin 'https://github.com/ervandew/supertab'
Plugin 'https://github.com/vim-scripts/scrollfix'

call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use: filetype plugin on


syntax on
filetype on
filetype plugin on
filetype indent on

set spelllang=en_us
set spell
set t_Co=256
"set visualbell
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set runtimepath^=~/.vim/bundle/plugin/NERD_tree.vim
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set ruler 
set laststatus=2 
set number 
set title 
" set hlsearch
set nohlsearch               " Don't continue to highlight searched phrases.
set incsearch                " But do highlight as you type your search.
set ignorecase               " Make searches case-insensitive.
set smartcase                " if other case available show
set scrolloff=8
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
let mapleader = ","
nnoremap <leader>c "+y<CR>
nnoremap <leader>v "+gP<CR>
" nnoremap <silent> <leader>z :Goyo<CR>
nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader>t :TagbarToggle<CR>

nnoremap j jzz
nnoremap k kzz

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

set wildmenu
set wildmode=list:longest
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set virtualedit=all

"colorscheme molokai
colorscheme mirodark

if has('gui_running')
	set guifont=Sauce\ Code\ Powerline\ Semibold\ 14
endif
set guioptions-=T

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

set wrap
set linebreak

" set spelllang=en_us,de_de
" autocmd BufNewFile,BufRead *.txt set spell
" autocmd BufNewFile,BufRead *.txt set textwidth=109
" autocmd BufNewFile,BufRead *.txt set formatoptions+=t

set relativenumber

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>']
let g:pymode_options_max_line_length=250
let g:pymode_folding=0
let b:javascript_fold=0
let g:javascript_enable_domhtmlcss=1
let g:pymode_rope_lookup_project=0
let g:ycm_python_binary_path = '/usr/bin/python3'


"function! PlaySound()
"  silent! exec '!play ~/.vim/sounds/keyany.wav >/dev/null 2>&1'
"endfunction
"autocmd CursorMovedI * call PlaySound()
"

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
