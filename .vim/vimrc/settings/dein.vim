let s:dein_dir = expand('~/.cache/dein')
let s:toml_dir = expand('~/.vim/dein/toml')
let s:toml = s:toml_dir . '/dein.toml'
let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin(s:dein_dir)

call dein#load_toml(s:toml, {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy': 1})

call dein#end()

if dein#check_install()
  call dein#install()
endif

