" 关闭兼容模式
set nocompatible
" Plugins managed by vundle begein{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"1: Vundle环境设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim 
"  Vundle管理的插件列表必须位于 Vundle#begin() 和 Vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
""Powerline is a utility plugin which allows you to create better-looking, more functional vim statuslines.
Plugin 'Lokaltog/vim-powerline'
""This file contains additional syntax highlighting that I use for C++11/14/17 development in Vim. 
Plugin 'octol/vim-cpp-enhanced-highlight'
" Indent Guides is a plugin for visually displaying indent levels in Vim.
Plugin 'nathanaelkane/vim-indent-guides'
" This Vim plugin will help switching between companion files (e.g. ".h" and ".cpp" files)
Plugin 'derekwyatt/vim-fswitch'
"vim-airline provides an excellent, informative status line.
Plugin 'bling/vim-airline'
"vim-polyglot provides better syntax highlighting for a many languages.
"conflict with latex  
Plugin 'sheerun/vim-polyglot'
"Fastfold makes folding faster
Plugin 'Konfekt/FastFold'
"tagbar lists sections (tags in general) in a different pane.
Plugin 'majutsushi/tagbar'
"UltiSnips is the ultimate solution for snippets in Vim. It has tons of features and is very fast
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. 
" It runs files through external syntax checkers and displays any resulting errors to the user.
Plugin 'scrooloose/syntastic'
" this is a simple plugin that allows per directory settings for your favourite editor VIM
Plugin 'mantiz/vim-plugin-dirsettings'
" vim-grammarous is a powerful grammar checker for Vim.
Plugin 'rhysd/vim-grammarous'
Plugin 'szw/vim-dict'
" colorschemes 
"phd: Color theme with dark blue background for coding
Plugin 'vim-scripts/phd'
Plugin 'chriskempson/base16-vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
" Make gvim-only colorschemes work transparently in terminal vim
Plugin 'vim-scripts/CSApprox'
" vim-signature is a plugin to place, toggle and display marks.
Plugin 'kshenoy/vim-signature'
" A Vim plugin that provides painless transparent tags generation and keeps tags up-to date
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'terryma/vim-multiple-cursors'
" Comment functions so powerful—no comment necessary.
Plugin 'scrooloose/nerdcommenter'
" DrawIt is a plugin which allows one to draw lines left, right, up, down, and along both slants
Plugin 'vim-scripts/DrawIt'
"This Vim plugin will pull C++ ptototypes into the implementation file
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
" Plugin 'fholgado/minibufexpl.vim'
" With Wildfire you can quickly select the closest text object among a group of candidates.
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
" When you open a markdown file in vim, a browser window will open which shows the compiled markdown in real-time, and closes once you close the file in vim.
Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'yegappan/grep'
Plugin 'dyng/ctrlsf.vim'
" supertab: this is needed for the compatability of UltiSnips and neocomplete
" and Youcompleteme
Plugin 'ervandew/supertab'
" Plugin 'Shougo/neocomplete.vim'
"" find tools
" Plugin 'mileszs/ack.vim'
" Plugin 'ggreer/the_silver_searcher'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'

" " Plugin 'vim-latex/vim-latex'
Plugin 'KeitaNakamura/tex-conceal.vim'
Plugin 'lervag/vimtex'
"new added plugins for latex:{
"from:https://ankursinha.in/2017/09/19/writing-latex-well-in-vim.html"
" Ensure hoc syntax does not get reapplied.
Plugin 'sanjayankur31/hoc.vim'
" LustyExplorer : Dynamic filesystem and buffer explorer
Plugin 'sjbach/lusty'

Plugin 'lifepillar/vim-solarized8'

" for git
 Plugin 'tpope/vim-fugitive'
" Fugitivein + Github
Plugin 'tpope/vim-rhubarb'
" Fugitivein + Pagure:Pagure support for :GBrowse feature provided by vim-fugitive plugin
Plugin 'FrostyX/fugitive-pagure-vim'
" unimpaired.vim: Pairs of handy bracket mappings
Plugin 'tpope/vim-unimpaired'
" It is an extension of the fugitive git plugin for vim
Plugin 'gregsexton/gitv'
" Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).
Plugin 'mhinz/vim-signify'
" A Vim plugin that manages your tag files
Plugin 'ludovicchabant/vim-gutentags'

Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-python/python-syntax'

" A plugin of NERDTree showing git status flags.
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin for NERD Tree that provides an execute menu item, that executes system default application for file or directory
Plugin 'ivalkeen/nerdtree-execute'
" This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
" Toggles between hybrid and absolute line numbers automatically
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'ycm-core/YouCompleteMe'

" Requiresin the_silver_surfer to be installed
Plugin 'lokikl/vim-ctrlp-ag'
" Requiresin Ctrlp:CtrlP extension for fuzzy-search in tag matches
Plugin 'ivalkeen/vim-ctrlp-tjump'

" man pages using vim plugin when available
Plugin 'jez/vim-superman'

"}" 
"插件列表结束
call vundle#end()

filetype plugin indent on
" dirsettings
call dirsettings#Install()
" }


" vim general setups begin {
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""1:实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 开启文件类型侦测
filetype on 
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
"其他。搜索、vim 命令补全等设置：
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" set spell
" vim 自身命令行模式智能补全
set wildmenu
" sensitive for lower upper letters
" set smartcase
set autoread
" Permit unsaved buffers
set hidden

" Enable conceal
set conceallevel=2
set concealcursor=nc

" set backspace working 
set bs=2
" Abbreviations, better to use snippets
" ab me Bo Ma
" ab sop System.out.println(
" ab pvsm public static void main (String [] args)
" ab sforge http://downloads.sourceforge.net/%{name}/%{name}-%{version}.tar.gz


" Automatically write a file when leaving a modified buffer
set autowrite
" Start a dialog when a command fails (here when quit command fails)
set confirm

" Highlight current line
set cursorline

set syn=auto
set showmatch

" 自适应不同语言的智能缩进
filetype indent on
"下面两行在进行编写代码时，在格式对起上很有用；
"第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
"第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
"写上很有用
set autoindent
set smartindent
"支持C/C++的缩进
set cin
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
"
" " "" most used colorscheme
colorscheme evening
set t_Co=256
set background=dark  "背景使用黑色

" """ another colorscheme
" " 使用 256 颜色库
" let base16colorspace=256
" " " " 使用 base16 中 base16-oceanicnext
" colorscheme base16-oceanicnext

""" another colorscheme
" colorscheme gotham

if exists('$TMUX')
  set term=screen-256color
endif

""set fontsize
set guifont=Monospace\ 12
syntax enable
syntax on           " 语法高亮  

set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
"行高亮

set cursorline
"列高亮，与函数列表有冲突
set cursorcolumn  

" 去掉输入错误的提示声音
""set noeb
set mouse=a
" 在处理未保存或只读文件的时候，弹出确认
set confirm


"置粘贴模式，这样粘贴过来的程序代码就不会错位了。
set paste
" 显示行号
set number

"禁止生成临时文件
set nobackup
set noswapfile

"搜索逐字符高亮
set hlsearch

"编码设置
set enc=utf-8
set termencoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 保存全局变量
set viminfo+=!

"设置鼠标运行模式为WINDOWS模式
"behave mswin

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt

"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
" 自适应不同语言的智能缩进
 
filetype indent on

"共享剪贴板  
set clipboard+=unnamed
"Show info in the window title
set title

" Disable the complete window
" set completeopt-=preview
"
" Underline bad spellings, undercurl doesn't show on my config
" https://vi.stackexchange.com/questions/15015/how-do-i-turn-off-undercurls-in-vim-guis
" https://stackoverflow.com/questions/6008921/how-do-i-change-the-highlight-style-in-vim-spellcheck
hi clear SpellBad
hi SpellBad cterm=underline gui=underline

" Use matchit
runtime! macros/matchit.vim

" Delete comment character when joining commented lines
set formatoptions+=j

"Line length above which to break a line
autocmd FileType python,cpp,c,text,rst,markdown,sh,sli setl textwidth=79

" the block below: Change cursor shape in different modes
" autocmd InsertEnter,InsertLeave * set cul!

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;yellow\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif


"make 运行
":set makeprg=g++\ -Wall\ \ %
"


"""""""""""""""""""""""""
"  " vim setups end }
"""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""
"  "vim special setups begin {
""""""""""""""""""""""""""""""""""

"folding files begin {

" Folding in C,CPP files
autocmd FileType c,cpp,py,tex,sh setl foldenable foldmethod=syntax
" autocmd BufRead,BufNewFile .vimrc  setl foldenable foldmethod=marker foldmarker={,}
" autocmd FileType vim setl foldenable foldmethod=marker
" This is for vertical indenting
" set list
" set listchars=tab:\|\ ,trail:-,eol:$
" Folding
" let &foldmarker='{,}'
" set foldnestmax=10
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'

set foldenable
set foldlevel=2
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <S-Space> @=(foldlevel('.')?'zA':"\<Space>")<CR>
"Folding
set foldcolumn=5

""folding files begin }

" open the current file in a new tab
nmap <Leader>nw  :tabedit %<CR>


" Different file comment templates
" use vim to new a file, it will automatically load the templates,supper
" cool!
" Python
autocmd BufNewFile *.py 0r ~/.vim/file-templates/py.vim
" Fedora review
autocmd BufNewFile *.fedreview 0r ~/.vim/file-templates/fedreview.vim
" GNUPlot
autocmd BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
autocmd BufNewFile *.plt,.gnuplot 0r ~/.vim/file-templates/gnuplot.vim
" Shell scripts
autocmd BufNewFile *.sh 0r ~/.vim/file-templates/sh.vim

" Save and automatically load folds
" You need to make a ~/.vim/views folder and chmod it to 755
" mkdir -p ~/.vim/view
" chmod 755 ~/.vim/view
autocmd BufWinLeave *.* silent! mkview
autocmd BufWinEnter *.* silent! loadview

""""""""""""""""""""
"  " quickfix模式{
  "
""""""""""""""""""""

autocmd FileType c,cpp,cu,py map <buffer> <F5> :w<cr>:make<cr>
" :cc                显示详细错误信息 ( :help :cc )
" :cp                跳到上一个错误 ( :help :cp )
" :cn                跳到下一个错误 ( :help :cn )
" :cl                列出所有错误 ( :help :cl )
" :cw                如果有错误列表，则打开quickfix窗口 ( :help :cw )
" :ccl                close quickfix窗口 ( :help :cw )
" :copen                open quickfix窗口 ( :help :cw )

""""""""""""""""""""
"  " quickfix模式}
  "
""""""""""""""""""""


" cpp setups begin {

" cpp setups end}


" latex setups begin {

" Compile document, be it groff/LaTeX/markdown/etc.
	" map <leader>c :w! \| !compiler <c-r>%<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !/home/mabo/.vim/tools/texclear %
	" Word count:
	autocmd FileType tex map <leader>cw :w !detex \| wc -w<CR>

"
" latex setups end }

" python setups begin {


" python setups end }

"""""""""""""""""""""""""""""""
"  vim special setups end }  "
"""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""
"   keys maps for vim begin {  "
"""""""""""""""""""""""""""""""""
" "自动补全 begin {{
" this is implemented by the plugin of 'jiangmiao/auto-pairs'
" inoremap ( ()<ESC>i
" inoremap ) <c-r>=ClosePair(')')<CR>
" inoremap { {<CR>}<ESC>O
" inoremap } <c-r>=ClosePair('}')<CR>
" inoremap [ []<ESC>i
" inoremap ] <c-r>=ClosePair(']')<CR>
" inoremap " ""<ESC>i
" inoremap ' ''<ESC>i
" function! ClosePair(char)
    " if getline('.')[col('.') - 1] == a:char
        " return "\<Right>"
    " else
        " return a:char
    " endif
" endfunction
"

" "自动补全 end }
" 

imap jj <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"3:键盘命令(map)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" define  the <Leader>
let mapleader=";"

" 定义快捷键到行首和行尾
nmap <Leader>h 0
vmap <Leader>h 0
nmap <Leader>e $
vmap <Leader>e $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
map <C-a> <esc>ggVG
"go to the corresponding block
nmap <Leader>b %
vmap <Leader>b %

" split the windows
nmap <Leader>sh :split<CR>
nmap <Leader>sv :vsplit<CR>
" map the navigation key
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
"toggle highlight for the search results.
nnoremap <Leader>hl  :set hlsearch!<CR>

"show messages of the vim
nmap <Leader>m :messages<CR>
"will open the current file in vscode from vim
nnoremap <leader>ov :exe ':silent !code %'<CR>:redraw!<CR>
" copy, cut and paste like windows
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Make shift-insert work like in Xterm

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

"""""""""""Indent Guides"""""""""""""""""""""
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"""""""""""cpp/h switch""""""""""""""""""""
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>


"选中一段文字并全文搜索这段文字(,/)
vmap <Leader>f y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vmap<Leader>/  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>  

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
" Escape special characters in a string for exact matching.
" This is useful to copying strings from the file to the search tool
" Based on this - http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
function! EscapeString (string)
  let string=a:string
  " Escape regex characters
  let string = escape(string, '^$.*\/~[]')
  " Escape the line endings
  let string = substitute(string, '\n', '\\n', 'g')
  return string
endfunction

" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! GetVisual() range
  " Save the current register and clipboard
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  " Put the current visual selection in the " register
  normal! ""gvy
  let selection = getreg('"')

  " Put the saved registers and clipboards back
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save

  "Escape any special characters in the selection
  let escaped_selection = EscapeString(selection)

  return escaped_selection
endfunction

" Start the find and replace command across the entire file
vmap <Leader>r <Esc>:%s/<c-r>=GetVisual()<cr>/


""""""""""""""""""""""""""""""
"   keys maps for vim end }  "
"""""""""""""""""""""""""""""""




""""""""""""""""""""""""""
"  "vim plugins begin{
 
""""""""""""""""""""""""""

"""""""""""""tagbar"""""""""""""""""
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>t :TagbarToggle<CR>
" or"
" "nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap  <Leader>vl  :TagbarToggle<CR>

" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0',
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" How to use ctags:
" go to your project directory, and run: ctags -R
" when editing, put your cursor over a variable, method or class and hit
" ctrl-] to jump to its difinition.
set tags=tags

""""""""声明/定义跳转"""""""""""""""""
" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

"""""""""""""indexer"""""""""""""""""
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
" NERDTree{

""""""""""""""NERDTree""""""""""""""""
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Ignore temporary files
let NERDTreeIgnore = ['\.pyc$', '\.aux$', '\.bbl$', '\.blg', '\.brf$', '\.out$', '\.fls$']

let g:indentLine_setColors = 0


" }


"""""""""""""gundo.vim"""""""""""""""""
" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>
" 开启保存 undo 历史功能
set undofile
" undo 历史保存路径
set undodir=~/.vim_undo_history/

" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.vim_undo_history/
set undofile


" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
" Vim airline show buffers
" This is disabled by default; add the following to your vimrc to enable the extension:
let g:airline#extensions#tabline#enabled = 1
" Separators can be configured independently for the tabline, so here is how you can define 'straight' tabs:
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '|'
"In addition, you can also choose which path formatter airline uses. This affects how file paths are displayed in each individual tab as well as the current buffer indicator in the upper right. To do so, set the formatter field with:
"
" let g:airline#extensions#tabline#formatter = 'default'
"" 设置切换Buffer快捷键":this does not work in text-mode vim (e.g., via SSH) because Ctrl-Tab cannot be mapped. 
" However, it does work in gVim
nnoremap <C-tab> :bn<CR>
nnoremap <C-S-tab> :bp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
" Ignore some extensions
set wildignore=*.o,*~,*.pyc,*.aux


"""""""""""""""""""""""""""""""""""""""""""
" Syntastic: https://github.com/vim-syntastic/syntastic
"""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_auto_refresh_includes = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_checkers = ['gcc', 'clang_check', 'cppcheck']
let g:syntastic_aggregate_errors = 1
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'

" passive_filetypes: check the syntax  errors only manually,sometimes very
" anoying
" active_filetypes: check the syntax when you save your file
let g:syntastic_mode_map = {
            \ "mode": "passive",
           \ "passive_filetypes": ["cpp", "c","tex", "python", "sh"],
           \ "active_filetypes": [ ]
           \  }
" manually check the errors
nnoremap <leader>ce :SyntasticCheck<CR> :SyntasticToggleMode<CR>

let g:syntastic_tex_checkers = ['chktex','lacheck', 'text/language_check']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_exec = "flake8-3"

let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="
let g:syntastic_loc_list_height=1
" Turn off multiple kinds of warnings in syntastic in vim:
let g:syntastic_quiet_messages = { 'regex': 'SC2148\|SC1234\|SC6789' }
" disable polyglot for python for the time being
" https://github.com/sheerun/vim-polyglot/issues/209
"vimtex does not work as expected when Latex-box is installed
"Latex-box is included with vim-polyglot so it should be disabled 
"for latex
let g:polyglot_disabled = ['python', 'latex']
let g:python_highlight_all = 1


" Some easytag configs
let g:easytags_syntax_keyword = 'always'
let g:easytags_dynamic_files = 2
let g:easytags_events = ['BufWritePost']
let g:easytags_async = 1

" Underline bad spellings, undercurl doesn't show on my config
" https://vi.stackexchange.com/questions/15015/how-do-i-turn-off-undercurls-in-vim-guis
" https://stackoverflow.com/questions/6008921/how-do-i-change-the-highlight-style-in-vim-spellcheck
hi clear SpellBad
hi SpellBad cterm=underline gui=underline

" Use matchit
runtime! macros/matchit.vim

" Delete comment character when joining commented lines
set formatoptions+=j

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ""-------------------ag and ctrlp to find and search----------------"  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {
let g:ag_highlight=1
let g:ag_working_path_mode="r"
"ctrlp default can not search the hidden file. add -hidden to enable it .
let g:ctrlp_show_hidden = 1
"# :Ag! content

set wildignore+=*.zip,*.exe

let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:20'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|DS_Store|dist|build|coverage)|(\.(git|hg|svn)$)',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

let g:ctrlp_ag_ignores = '--ignore .git
    \ --ignore "deps/*"
    \ --ignore "_build/*"
    \ --ignore "node_modules/*"'


" lokikl/vim-ctrlp-ag{
"
" "Press <leader>ca on the word you want to search (works in both normal/visual mode)
nnoremap <leader>cf :CtrlPag<cr>
vnoremap <leader>cf :CtrlPagVisual<cr>
" Press <leader>ca, a prompt opened to ask you what to search
nnoremap <leader>ca :CtrlPagLocate
" " Press <leader>cp, to redo the last ag search in CtrlP
" nnoremap <leader>cp :CtrlPagPrevious<cr>
let g:ctrlp_ag_ignores = '--ignore .git
      \ --ignore "deps/*"
      \ --ignore "_build/*"
      \ --ignore "node_modules/*"'

" }
"
""""""""""""""""""""""""""""""""
"  " ivalkeen/vim-ctrlp-tjump begin "
""""""""""""""""""""""""""""""""
" {

" CtrlPtjump - go to declaration of the identifier supplied as an argument, if not use the word under cursor
nnoremap <c-]> :CtrlPtjump<cr>
"nnoremap <c-[> :CtrlPtjump<cr> "this conflicts with <esc>"
"CtrlPtjumpVisual - go to declaration of the visual selected text"
vnoremap <c-]> :CtrlPtjumpVisual<cr>
"vnoremap <c-[> :CtrlPtjumpVisual<cr>"this conflicts with <esc>"
 " If there is only one tag found, it is possible to open it without opening CtrlP window:
let g:ctrlp_tjump_only_silent = 1
" ivalkeen/vim-ctrlp-tjump end "}

""ag and ctrlp to find and search-}

""""""""""""""""""""
"  "latex stuff{
""""""""""""""""""""

set grepprg="grep\ -nH\ $*"
" indentation for tex files
" autocmd BufRead,BufNewFile *.sty setl filetype=tex
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd FileType tex setl sw=2
autocmd FileType tex setl tabstop=2
autocmd FileType tex setl softtabstop=2
autocmd FileType tex setl softtabstop=2
autocmd FileType tex IndentLinesDisable
"set tex file auto-trigger disabled(0)
" autocmd FileType tex let g:ycm_auto_trigger=0

"Spell check
autocmd FileType tex,markdown,rst,mail,markdown setl spell spelllang=en_gb
autocmd FileType tex,markdown,rst,mail,markdown setl linebreak
" tex-conceal.vim{
 
let g:tex_conceal="abdgm"
let g:tex_conceal="abdgm"
let g:tex_fold_enabled=1
set conceallevel=2
"}

""--------vimtex plugin---------------------
 " LaTeX temporary files
set wildignore+=*.aux,*.bbl,*.bcf,*.blg,*.fls,*.idx,*.ilg,*.ind,*.log,*.out,*.run.xml,*synctex.gz,*.fdb_latexmk,*.nav,*.snm,*.toc,*.vrb,*.cut,*.lo,*.brf

" change the vimtex leader key(\) to ';'
let maplocalleader = ';'
" "
" " NOTE: See also ~/.vim/personal/ftplugin/tex.vim
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
"don't show quickfix error messages
let g:vimtex_quickfix_mode=0


let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'jobs',
            \ 'background' : 1,
            \ 'build_dir' : '',
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-pdf',
            \   '-verbose',
            \   '-recorder',
            \   '-pdflatex="pdflatex"',
            \   '--shell-escape',
            \   '-use-make',
            \   '-bibtex',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}

let g:vimtex_complete_bib = {
            \ 'recursive': 0,
            \ 'simple': 1,
            \}
" Do not open the quickfix window automatically for warnings.
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_fold_enabled = 1


"
"end latex stuff }"

"""""""""""""""""""""""""""""""
""  'Lokaltog/vim-powerline'  "
"""""""""""""""""""""""""""""""
"" let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""
""  octol/vim-cpp-enhanced-highlight "

""""""""""""""""""""""""""""""""""""""
"" " Highlighting of class scope is disabled by default. To enable set
"" let g:cpp_class_scope_highlight = 1
"" " Highlighting of member variables is disabled by default. To enable set
"" let g:cpp_member_variable_highlight = 1
"" Highlighting of class names in declarations is disabled by default. To enable set
"let g:cpp_class_decl_highlight = 1

"""""""""""""""""""""""""""""""""""""""""
" Plugin 'nathanaelkane/vim-indent-guides"
"""""""""""""""""""""""""""""""""""""""""
" The default mapping to toggle the plugin is <Leader>ig.
" 
" If you would like to have indent guides enabled by default, you can add the following to your ~/.vimrc:
" let g:indent_guides_enable_on_vim_startup = 1
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Konfekt/FastFold "
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" If you prefer that folds are only updated manually but not when saving the buffer: 
let g:fastfold_savehook = 0
" If you prefer that folds are not updated whenever you close or open folds by a standard keystroke such as zx,zo or zc,
let g:fastfold_fold_command_suffixes = []
" FastFold is by default enabled for files that have more than a certain number of lines, by default set to 200.
" To change this number, for example, to enable FastFold independent of the number of lines of a file
" let g:fastfold_minlines = 100
"
"
""""""""""""""""""""""""""
"  vim-instant-markdown  "
"
""""""""""""""""""""""""""
let g:instant_markdown_browser = "zathura"

let g:instant_markdown_slow = 1

"""""""""""""""""
"  neocomplete  "
"""""""""""""""""

" """"""""""""
" "  ctrlSF{
"" """"""""""""
" 设置ctrlsf 使用ag
let g:ctrlsf_ackprg = 'ag'
 " 表示窗口在左边还是右边打开
let g:ctrlsf_open_left = 0

nmap     <Leader>cf <Plug>CtrlSFPrompt
vmap     <Leader>cf <Plug>CtrlSFVwordPath
vmap     <Leader>cF <Plug>CtrlSFVwordExec
nmap     <Leader>cn <Plug>CtrlSFCwordPath
nmap     <Leader>cp <Plug>CtrlSFPwordPath
nnoremap <Leader>co :CtrlSFOpen<CR>
nnoremap <Leader>ct :CtrlSFToggle<CR>
inoremap <Leader>ct <Esc>:CtrlSFToggle<CR>

" }"

" Lustyjuggler{
"
let g:LustyJugglerDefaultMappings = 0
nnoremap <Leader>ljb :LustyJuggler<CR>
let g:LustyJugglerSuppressRubyWarning = 1
" }

"
"
" solarize{
" 
" True color
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" must follow the above settings
" solarized
set background=dark
colorscheme solarized8_flat
" Because it must use the terminal's pallette
let g:solarized_use16=1

" }
" 
" vim-signify{
"
let g:signify_vcs_list = ['git']
" }

" set relative numbers for use with numbertoggle
set number relativenumber

" YouCompleteMe{
" This option controls the number of characters the user needs to type before identifier-based completion suggestions are triggered.
let g:ycm_min_num_of_chars_for_completion = 2





" make YCM compatible with UltiSnips (using supertab)
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']

let g:SuperTabDefaultCompletionType = '<C-n>'

" }
"
"  UltiSnips{
"" """""""""""""""""""""""""""""""""""""""
"  UltiSnips
"""""""""""""""""""""""""""""""""""""""
" let g:UltiSnipsSnippetDirectories=['/home/mabo/.vim/UltiSnips']
let g:UltiSnipsUsePythonVersion = 3
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"  }

"vim-signature begin {
"
""""""""""""vim-signature 快捷键"""""""""""""""""""
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }




"vim-signature end }
"
" vim-superman{
" Make it cleaner
autocmd FileType man setlocal nomod nolist noexpandtab tabstop=8 softtabstop=8 shiftwidth=8

" }

""""""""""""""""""""""""
"  vim plugins begin}  "
""""""""""""""""""""""""


