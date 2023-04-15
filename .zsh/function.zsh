# ファイル検索してVimで開く
fv() {
  local file
  file=$(find . | fzf)
  v "$file"
}

# ファイル検索してVSCodeで開く
fc() {
  local file
  file=$(find . | fzf)
  code "$file"
}

# 全文検索
frv() {
  local file
  file=$(rg $1 | fzf | cut -d ":" -f 1)
  v $file
}

# ディレクトリ移動
fdir() {
  cdir=$(pwd)
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "${cdir}${dir#.}"
}

# ディレクトリをFinderで開く
fdo() {
  cdir=$(pwd)
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  open "${cdir}${dir#.}"
}

# ディレクトリをIntellijで開く
fdi() {
  cdir=$(pwd)
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  idea "${cdir}${dir#.}"
}

# ディレクトリをVSCodeで開く
fdc() {
  cdir=$(pwd)
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  code "${cdir}${dir#.}"
}
