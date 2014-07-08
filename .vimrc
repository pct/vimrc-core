"==================================
filetype off                   " required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" My NeoBundles here:
"
NeoBundle 'fatih/vim-go'

" Editor Config
NeoBundle 'editorconfig/editorconfig-vim'

" Rails
NeoBundle 'tpope/vim-rails.git'

" Misc
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'pekepeke/titanium-vim' 

" Fuzzy search
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/unite-help'
NeoBundle 'Shougo/unite-session'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'mileszs/ack.vim'

" Code completion
NeoBundle 'ervandew/supertab'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache.vim'

" Shell
NeoBundle 'thinca/vim-quickrun'

" Snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'JazzCore/neocomplcache-ultisnips'
NeoBundle 'honza/vim-snippets'

" File browsing
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Shougo/vimfiler'

" Syntax (> 50 languages support)
NeoBundle 'sheerun/vim-polyglot'

" Syntax checker
NeoBundle 'scrooloose/syntastic'

" Text Objects
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'

" Status line
NeoBundle 'bling/vim-airline'


filetype plugin indent on     " required!

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck


" ===============================================================


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
" Open auto write file
set autowrite

" 顯示行號
set number

" 顯示現在的模式
set showmode

" 自動設定標題
set title

" tab 相關設定，2 個空白, 空白取代 tab, 自動縮排 2 格
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smarttab
set fdm=indent
set fdc=2

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


"=================
" Plugin Settings
"=================


"Emmet settings"
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

"NERDTree"
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p " vim 開啟檔案時，focus 在檔案而非 NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let NERDTreeWinSize=26

"NERDTreeTabs"
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" airline
let g:airline_powerline_fonts = 1

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
