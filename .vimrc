" 設定 GUI 字型
set guifont=Droid\ Sans\ Mono\ 12

" 使用面板
colorscheme yzlin256

" 256 色
set t_Co=256

" 檔案格式優先
set ffs=unix,dos ff=unix

"設定背景顏色為黑色
set background=dark

" 關閉 vi 兼容模式
set nocompatible

" Set mouse
set mouse=a
set ttymouse=xterm

" 打開語法效果
syntax on

" 依檔名打開語法效果
filetype on

" Open auto write file
set autowrite

" 顯示行號
set number

" 顯示現在的模式
set showmode

" 自動設定標題
set title

" tab 相關設定，4 個空白, 空白取代 tab, 自動縮排 4 格
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set fdm=indent
set fdc=4

" show the cursor position all the time
set ruler

" 縮排
set autoindent
set smartindent

"沒有備份檔案
set backup

" 設定自動換行
set wrap

" 尋找時，符合字串會反白表示
set hlsearch

" 加強式尋找功能，在鍵入 patern 時會立即反應移動至目前鍵入之 patern 上
set incsearch

" 底下的command status line為兩行
set cmdheight=2

" 總是顯示資訊
set laststatus=2

" 設此是游標整行會標註顏色
set cursorline

" 設定檔案編碼清單
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le

" 設定編碼 內部編碼 Terminal編碼
set fenc=utf-8 enc=utf-8 tenc=utf-8

" Syntax Fold
set foldmethod=syntax

" 方便中文重排設定
set formatoptions=mtcql

" 將註解由深藍色變灰色
hi Comment ctermfg=240

" tab 設定
map tn :tabnext<CR>
map tp :tabprev<CR>
map te :tabnew 
map tc :tabclose<CR>
 
" Normal Mode時,可用tab及shift-Tab做縮排
nmap <tab> v>
nmap <s-tab> v<
" Visual/Select Mode時，也行
vmap <tab> >gv
vmap <s-tab> <gv

" 設定 OmniComplete
fun! OmniComplete()
    let left = strpart(getline('.'), col('.') - 2, 1)
    if left =~ "^$"
        return ""
    elseif left =~ ' $'
        return ""
    else
        return "\<C-x>\<C-o>"
endfun
inoremap <silent> <S-Tab> <C-R>=OmniComplete()
 
autocmd FileType c set ofu=ccomplete#Complete
autocmd FileType php set ofu=phpcomplete#CompletePHP
autocmd FileType python set ofu=pythoncomplete#Complete
autocmd FileType javascript set ofu=javascriptcomplete#CompleteJS
autocmd FileType html set ofu=htmlcomplete#CompleteTags
autocmd FileType css set ofu=csscomplete#CompleteCSS
autocmd FileType xml set ofu=xmlcomplete#CompleteTags
 
" c autotidy by indent
autocmd FileType c :set equalprg=indent

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" 顯示未完成的指令
set showcmd

" 使用 Q 來 mapping gq 重排
map Q gq

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" vim 7.3 才啟用這些功能
if version >= 703
  set conceallevel=1
  set concealcursor=nc
  set colorcolumn=+1
  set cinoptions+=L0
  set undofile
  set undodir=~/.vim/undofiles
  if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
  endif
endif
