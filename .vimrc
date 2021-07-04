syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set noswapfile
set nowrap
set incsearch
set laststatus=2

filetype indent on




call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'Yohannfra/Vim-Goto-Header'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'frazrepo/vim-rainbow'

call plug#end()

au FileType c,cpp call rainbow#load()

let g:onedark_hide_endofbuffer = 1
let g:goto_header_use_find = 1
let g:goto_header_includes_dirs = ["~/Projects/git"]
let g:ctrlp_use_caching = 0
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

colorscheme onedark

if (empty($TMUX))
      if (has("nvim"))
            let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      endif

      if (has("termguicolors"))
            set termguicolors
      endif
endif
                  



nmap <C-w> :w <CR>
nmap <C-q> :wq <CR>
nmap <C-c> :q! <CR>
nmap <C-s> :w <bar> :source ~/.vimrc <CR>
nmap <C-u> :undo <CR>
nmap <r> :redo <CR>
nmap <C-m> :noh <CR>
nmap <C-l> :wincmd l <CR>
nmap <C-j> :wincmd j <CR>
nmap <C-h> :wincmd h <CR>
nmap <C-k> :wincmd k <CR>
nmap <C-s>v :vsplit <bar> wincmd l <CR>
nmap <C-s>h :split <bar> wincmd k <CR>
nmap <C-n>v :vnew <CR>
nmap <C-n>h :new <CR>
nmap <C-Up> :vertical resize +5 <CR>
nmap <C-Down> :vertical resize -5 <CR>

nmap <C-i> :w <bar> :source % <bar> :PlugInstall <CR>
nmap <C-u> :w <bar> :source % <bar> :PlugClean <bar> :q <CR>
nmap <C-p> :w <bar> :CtrlP <CR>
nmap <Space>g :w <bar> :GotoHeaderSwitch <CR>
nmap <C-g> :w <bar> :GotoHeader <CR>
nmap <C-t> :NERDTree ~/Projects/git <bar> :vertical resize 22 <CR>
