# デフォルトのエディタ
export EDITOR=vim
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# Homebrew
export PATH=/opt/homebrew/bin:$PATH
# Maven
export M2_HOME=/opt/homebrew/Cellar/maven/3.8.5/libexec/
export PATH=$M2_HOME/bin:$PATH
# MySQL
export PATH=/usr/local/mysql/bin:$PATH
# JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
PATH=${JAVA_HOME}/bin:${PATH}
# pyenv
export PYENV_ROOT="$HOME/.pyenv/shims"
export PATH="$PYENV_ROOT:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/python"
eval "$(pyenv init -)"

# embulk
export PATH="$HOME/.embulk/bin:$PATH"

# jupyter
export PATH="$HOME/.local/bin:$PATH"
