# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/noah/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit; promptinit
prompt spaceship
SPACESHIP_VI_MODE_SHOW=false

# keychain
eval $(keychain --eval --quiet id_ed25519 id_rsa id_gitlab_arch)

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

bindkey "^R" history-incremental-search-backward

# path
# or prepend
path=('/home/noah/.local/bin' $path)
# export to sub-processes (make it inherited by child processes)
export PATH
