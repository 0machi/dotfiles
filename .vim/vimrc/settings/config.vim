" 文字
" 文字コードをUFT-8に設定
set fenc=utf-8
" 全角文字専用の設定
set ambiwidth=double
" すべての数を10進数として扱う
set nrformats=


" ファイル
" ファイルを上書きする前にバックアップを作らない
set nowritebackup
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" バッファが編集中でもその他のファイルを開けるように
set hidden


" クリップボード
" yでコピーした時にクリップボードに入る
set guioptions+=a
" クリップボードとコピペを共有
set clipboard&
set clipboard^=unnamed


" カーソル
" 行末の1文字先まで移動可能に
set virtualedit=onemore
" 左右移動で行末から次の行頭へ移動
set whichwrap=b,s,h,l,<,>,[,],~
" 編集箇所を記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif


" リロード
" 編集中のファイルが変更された場合は自動で読み直す
set autoread
" auto reload .vimrc
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END


" その他
" wildmenuオプションを有効(vimバーからファイルを選択可能)
set wildmenu
" コマンドラインの履歴を10000件保存
set history=10000
" インサートモード中の BS、CTRL-W、CTRL-U による文字削除を柔軟に
set backspace=indent,eol,start
" エラーによるビープ音を無効
set noerrorbells
" コマンドラインの補完
set wildmode=list:longest
" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END
