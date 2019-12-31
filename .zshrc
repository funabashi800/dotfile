export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/Judy-master:$PATH
export SHELL=/usr/local/bin/zsh
export PATH=$HOME/Development/flutter/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export GOPATH=$HOME/go
export PATH=$HOME/Library/Python/3.7/bin:$PATH
export PATH=$GOPATH/bin:$PATH
# enable to use color
autoload -Uz colors


# enable to use emacs keybind
bindkey -e

# configure for history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# prompt
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

unsetopt PROMPT_SP
setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt share_history

setopt nolistbeep

setopt auto_cd
function chpwd() { ls }

export LANG=en_US.UTF-8
alias change="emacs ~/.zshrc"
alias update="source ~/.zshrc"

alias ls="lsd"

eval "$(starship init zsh)"

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
