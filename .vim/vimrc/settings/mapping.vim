" バッファの切り替え
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

" 折り返し時に表示行単位で移動
nnoremap j gj
nnoremap k gk

" タブの切り替えを楽に
nnoremap <C-w> <C-w>w

" ESC連打で検索後のハイライトを解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" HTML/XML閉じタグ自動補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

