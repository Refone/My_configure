"== Vundle Config ==
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" == Vundle Config End ==

" display line number by default
set number

" Colors
" other good colorscheme chioces
" badwolf | solarized | molokai
" you need to download/edit *.vim in your ~/.vim/colors/
" if you don't have such directory, create one.
colorscheme molokai
let g:rehash256=1
let g:molokai_original=1

syntax enable

set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
" set expandtab		" a TAB are completely equal to X spaces

set cursorline		" highlight current line

set incsearch		" search as characters are entered
set hlsearch		" highlight matches

set backspace=2

" TagBar
" 设置tagbar的窗口宽度
let g:tagbar_width=30
" 映射Tagbar的快捷键,按F8自动打开
map <F8> :TagbarToggle<CR>
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	shortcut key mappnig
"
"	<Esc>:	Escape
"	<CR>:	Enter
"	<D>:	Command
"	<M-key>|<A-key>:	Alt
"	<C>:	Ctrl
"	combo:  <C-Esc> = Ctrl + Esc
"
"	+---------+----------+------------+------------+----------+------------+
"	| Command | 常规模式 | 可视化模式 | 运算符模式 | 插入模式 | 命令行模式 |
"	+---------+----------+------------+------------+----------+------------+
"	|	map	  |		y	 |     y	  |		y	   |		  |			   |
"	+---------+----------+------------+------------+----------+------------+
"	|	nmap  |		y	 |      	  |		 	   |		  |			   |
"	+---------+----------+------------+------------+----------+------------+
"	|	vmap  |		 	 |     y	  |		 	   |		  |			   |
"	+---------+----------+------------+------------+----------+------------+
"	|	omap  |		 	 |      	  |		y	   |		  |			   |
"	+---------+----------+------------+------------+----------+------------+
"	|	map!  |		 	 |      	  |		 	   |	y	  |		y	   |
"	+---------+----------+------------+------------+----------+------------+
"	|	imap  |		 	 |      	  |		 	   |	y	  |			   |
"	+---------+----------+------------+------------+----------+------------+
"	|	cmap  |		 	 |      	  |		 	   |		  |		y	   |
"	+---------+----------+------------+------------+----------+------------+
"
"map!	<C-Down>	<C-d>
"map!	<C-Up>		<C-u>
"map!	<C-Left>	<Home>
"map!	<C-Right>	<End>
"
if &term =~ '256color'  
  " disable Background Color Erase (BCE) so that color schemes  
  " render properly when inside 256-color tmux and GNU screen.  
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html  
  set t_ut=  
endif 
