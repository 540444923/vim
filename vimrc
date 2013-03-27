" be iMproved
set nocompatible

" Vundle setting {
	filetype off " required!

	set rtp+=~/.vim/bundle/vundle/
	"if has("gui_running")
		"set rtp+=~/.vim/bundle/vim-powerline
	"endif
	call vundle#rc()

	" let Vundle manage Vundle(required!)
	Bundle 'gmarik/vundle'

	" plugins repos {
		" a css/html helper
		Bundle 'ZenCoding.vim'

		" Mini buffer
		Bundle 'minibufexplorerpp'

		" The-NERD-tree
		Bundle 'The-NERD-tree'

		" Commenter for many lang
		Bundle 'The-NERD-Commenter'

		" Taglist
		Bundle 'taglist.vim'

		" Ruby on Rails plugin
		Bundle 'tpope/vim-rails'

		" match ()
		Bundle 'matchit.zip'

		" a color colorscheme
		Bundle 'chriskempson/vim-tomorrow-theme'

		" a code complete plugin
		Bundle 'Valloric/YouCompleteMe'

		" Auto close the block
		Bundle 'AutoClose'

		" Get git  branch status
		Bundle 'Git-Branch-Info'

		" ctrlp.vim
		Bundle 'ctrlp.vim'
	" }

	" required!
	filetype plugin indent on
" }

" NERDTree setting {
	map <F7> :NERDTreeToggle<cr>
" }

" TagList setting {
	" Show Tlist on the right
	let Tlist_Use_Right_Window=1

	" Close vim when Tlist is the last window
	let Tlist_Exit_OnlyWindow=1

	" Show Tlist only one file
	let Tlist_Show_One_File=1

	" Get focus when open the Tlist
	let Tlist_GainFocus_On_ToggleOpen=1

	" Mapping <F8>to Toggle the Tlist
	map <F8> :TlistToggle<cr>
" }

" format setting {
	" 开始行号
	set number

	" 设定 << 和 >> 命令移动时的宽度为 4
	set shiftwidth=4

	" 使得按退格键时可以一次删掉 4 个空格
	set softtabstop=2

	" 设定 tab 长度为 4
	set tabstop=4

	" 设定提示宽度的标尺为80个字符
	set textwidth=100
	set cc=+1

	" 光标距离上下边距行数
	set so=3

	" 为这些语言设置缩进风格 {
		autocmd FileType ruby set shiftwidth=2 | set expandtab
		autocmd FileType erlang set shiftwidth=2 | set expandtab
		autocmd FileType php set shiftwidth=4 | set expandtab
	" }
" }

" display setting {
	" 显示状态栏 (默认值为 1, 无法显示状态栏)
	set laststatus=2

	" 搜索时高亮显示被找到的文本
	set hlsearch

	" 输入搜索内容时就显示搜索结果
	set incsearch

	" 显示tab以及空格
	set list
	set listchars=tab:>-,trail:·

	" syntax on
	syntax on

	" 设置backspace
	set backspace=indent,eol,start
" }

" key map {
	" <leader> key setting {
		let mapleader = ","
		let g:mapleader = ","
	" }

	" Fast saving
	nmap <leader>w :w!<CR>

	" fast change panel {
		nmap <Tab> <C-w>w
		nmap <c-h> <c-w><c-h>
		nmap <c-j> <c-w><c-j>
		nmap <c-k> <c-w><c-k>
		nmap <c-l> <c-w><c-l>
	" }
" }

" other setting {
	" Set to auto read when a file is changed from the outside
	set autoread

	" no backup
	set nobackup

	" 让Vim默认使用系统的剪切板
	set clipboard=unnamed

	" Vim使用的ctag 已经不用了   系统的ctags已经软连接到/usr/local/bin/ctags
	"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
" }