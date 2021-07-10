" general
" open file and move to last position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]
set laststatus=2 

" vundle managed plugins
" ==================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'iamcco/mathjax-support-for-mkdp' 
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/fcitx.vim'
Plugin 'vim-scripts/scrollfix'

call vundle#end()
filetype plugin indent on

" key mapping
" ===================================================
let mapleader=";"
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
map ]] :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
map , :tnext<CR>
map == :FormatCode<CR>

" vim settings
" ====================================================
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

set encoding=utf-8
set background=light
" colorscheme solarized
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set cursorline
set nu
set tags=tags

set expandtab
set ts=2
set shiftwidth=2
set autoindent
set foldmethod=manual
set backspace=indent,eol,start
syntax on

exe 'colo' ((strftime('%H') % 20) > 7 ? 'koehler' : 'default')

" =========================plugin settings=============================
" instant markdown view
" let g:instant_markdown_slow = 1
let g:mkdp_path_to_chrome = "/usr/bin/chromium-browser"
let g:mkdp_refresh_slow = 1 
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1

"" YCM
"" YCM 补全菜单配色
"" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_use_ultisnips_completer = 1
"" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
"" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
"" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
"" 引入 C++ 标准库tags
"" set tags+=/data/misc/software/misc./vim/stdcpp.tags
"" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"inoremap <leader>; <C-x><C-o>
"" 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt-=preview
"" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
"" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1

let g:scrollfix=40  " means percentage from top of screen
