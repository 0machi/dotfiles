function ghq-fzf() {
    local selected_dir=$(ghq list | fzf --query="$LBUFFER")

    if [ -n "$selected_dir" ]; then
        BUFFER="cd $(ghq root)/${selected_dir}"
        zle accept-line
    fi

    zle reset-prompt
}

zle -N ghq-fzf
bindkey "^g" ghq-fzf

function ghq-fzf-github() {
    local selected_dir=$(ghq list | fzf --query="$LBUFFER")
    cur_dir=$(pwd)

    if [ -n "$selected_dir" ]; then
        cd $(ghq root)/${selected_dir} && git open && cd ${cur_dir}
    fi
}

zle -N ghq-fzf-github
bindkey "^h" ghq-fzf-github

function git-switch-fzf() {
  target_br=$(
    git branch -a |
      fzf --exit-0 --layout=reverse --info=hidden --no-multi --preview-window="right,65%" --prompt="SWITCH BRANCH > " --preview="echo {} | tr -d ' *' | xargs git lg --color=always" |
      head -n 1 |
      perl -pe "s/\s//g; s/\*//g; s/remotes\/origin\///g"
  )
  if [ -n "$target_br" ]; then
    BUFFER="git switch $target_br"
    zle accept-line
  fi
}
zle -N git-switch-fzf
bindkey "^b" git-switch-fzf

function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzf-select-history
bindkey '^h' fzf-select-history
