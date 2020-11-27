set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let mapleader="\<Space>"
" コードをインデント整形
map <Space>i gg=<S-g><C-o><C-o>zz
" 1行選択(\n含まず)
noremap <Space>v 0v$h
" 1行削除(\n含まずに dd)
noremap <Space>d 0v$hx
" 改行なしで1行コピー（\n を含まずに yy）
noremap <Space>y 0v$hy
" 置換
noremap <Space>h :%s/
" easymotionトグル
map <Leader> <Plug>(easymotion-prefix)
" コメントアウト
map <Space>co <S-i># <ESC>
vmap <Space>co <S-i># <ESC>
" アンコメント
map <Space>uc ^xx<ESC>
" ハイライトを無効化
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set pastetoggle=<F2>
" プラグイン
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/vim-auto-save'
let g:auto_save = 1
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
call plug#end()