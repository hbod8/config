#
# Zsh Config
# Harry Saliba 2022
#

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias cp='cp -i'
alias df='df -h'
alias free='free -m'
alias rm='rm -i'
alias more='less'
#alias ls='exa --icons'
#alias ll='exa --icons --long --header --git'
#alias lt='exa --icons --long --tree --level=3 --git'
#alias cat='bat'
#alias cd='z'

#source ~/powerlevel10k/powerlevel10k.zsh-theme

#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#eval "$(zoxide init zsh)"
