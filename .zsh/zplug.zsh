# zplugを使う
source ~/.zplug/init.zsh
# 自分自身をプラグインとして管理
zplug "zplug/zplug", hook-build:'zplug --self-manage'
# 非同期処理
zplug "mafredri/zsh-async"
# コマンド入力中に上キーや下キーを押した際の履歴の検索を使いやすくする
zplug "zsh-users/zsh-history-substring-search"
# コマンド入力をすると履歴から検索しサジェストを表示
zplug "zsh-users/zsh-autosuggestions"
# Tabキーでコマンド補完
zplug "zsh-users/zsh-completions"
# 256色表示
zplug "chrissicool/zsh-256color"
# zsh構文の強調表示
zplug "zsh-users/zsh-syntax-highlighting"
# リポジトリのGitHubを開く
zplug "paulirish/git-open"
# cf コマンドの先読み展開機能
zplug "dannyzen/cf-zsh-autocomplete-plugin"
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
