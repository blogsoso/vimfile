set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/vundle/
call vundle#rc()
source ~/.vim/vundle_rc

" set guifont=Ubuntu\ Mono\ 12

set guifont=Monaco\ 10

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set enc=utf-8  
" 设置文件编码  
set fenc=utf-8  
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
" 设置开启语法高亮  
syntax on  
"显示行号  
set number  
" 查找结果高亮度显示  
set hlsearch  
" 不生成swp文件
set noswapfile


filetype plugin indent on  

" 把 F8 映射到 启动NERDTree插件  
" map <F8> :NERDTree<CR>
" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了  
" imap <C-S> <C-C>:w<CR>  

function Maximize_Window()
	silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

filetype plugin on

" 修改swapfile路径
set dir=~/.vim/backup/
let g:rsenseHome = "/usr/lib/rsense-0.3"
let g:rsenseUseOmniFunc = 1
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Command-T
" let g:CommandTMaxFiles=20000
" map <F9> :CommandTFlush<CR>

" set wildignore+=public,.git 
set wildignore+=.git 

let g:Powerline_symbols = 'fancy'


colorscheme vividchalk
set showcmd
set wrap
behave mswin
let Tlist_Use_Right_Window=1

" tab宽度  
set tabstop=2 shiftwidth=2 softtabstop=2
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " 高亮显示结尾没有用的空格等，Highlight problematic whitespace
set laststatus=2
set tabstop=2
set cindent shiftwidth=4
set autoindent shiftwidth=4

" 让nerdtree show hidden files and folders
let NERDTreeShowHidden=1

" keyboard settings ###########################################
map <F8> :NERDTreeToggle<CR>
map <F7> :BufExplorer<CR>
noremap <silent>nf :NERDTreeFind<CR>
" noremap <silent>nt :BufExplorer<CR>

" local
source ~/.vim/.vimrc_local


