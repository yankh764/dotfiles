syntax on

set title
set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set nu
set noswapfile
set nowrap
set incsearch
set laststatus=2
set noshowmode
set backspace=indent,eol,start
set scrolloff=13
set smartcase 

au FileType c,cpp,py,sh,arduino call rainbow#load()
au FileType c,cpp,py set colorcolumn=80
au Filetype markdown set spell spelllang=en_us
au FileType c,cpp,arduino set tabstop=8 softtabstop=8 shiftwidth=8
au BufNew,BufRead,BufWritePost *.h setfiletype c

au VimEnter * nnoremap <Tab> <Nop>


filetype plugin indent on


call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'Yohannfra/Vim-Goto-Header'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-fugitive'

call plug#end()



if (empty($TMUX))
      if (has("nvim"))
            let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      endif

      if (has("termguicolors"))
            set termguicolors
      endif
endif



colorscheme onedark

let g:onedark_hide_endofbuffer = 1
let g:goto_header_use_find = 1
let g:goto_header_includes_dirs = ["~/Projects/git"]
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \
      \ 'active': {
      \     'left': [ ['mode', 'paste'], ['readonly', 'filename', 'modified', 'gitbranch'] ],
      \     'right': [ ['lineinfo'], ['percent'], ['fileformat', 'filetype'] ]
      \     },
      \
      \ 'component_function': {
      \     'gitbranch': 'FugitiveHead'
      \     },
      \ }


                  


nmap <C-e> :w <bar> :Ex <CR>
nmap <C-w> :w <CR>
nmap <C-q> :wq <CR>
nmap <C-c> :q! <CR>
nmap <C-s> :w <bar> :source ~/.vimrc <CR>
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
nmap <C-m> :noh <CR>

nmap <C-i> :w <bar> :source % <bar> :PlugInstall <CR>
nmap <C-u> :w <bar> :source % <bar> :PlugClean <bar> :q <CR>
nmap <Space>g :w <bar> :GotoHeaderSwitch <CR>
nmap <C-g> :w <bar> :GotoHeader <CR>

