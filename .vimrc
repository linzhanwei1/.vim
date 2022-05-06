set nocompatible
set nu
set background=dark
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
filetype on
filetype plugin on
filetype indent on
"set cursorline
set backspace=2
"禁止生成临时文件
set nobackup
set noswapfile
set autoread
set autowrite
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
"可以在buffer的任何地方使用鼠标(类似office中在公布工作区双击鼠标定位)
"set mouse=a
set selection=exclusive
set selectmode=mouse,key
"通过使用：commands命令，告诉我们文件的哪一行被改变过
set report=0
"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
colorscheme desert

"==================== Power line  ===================
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
set encoding=utf8

"==================== air-line  ===================
set noshowmode

"==================== NERDTree ===================
let NERDTreeMinimalUI=1
let NERDTreeWinSize=20

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

"==================== ctags  ===================
set tags=tags;
"set autochdir

"==================== ctags  ===================
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=25
nmap <C-b> :TagbarToggle<CR>

"============= plugin manager===================
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
call plug#end()
