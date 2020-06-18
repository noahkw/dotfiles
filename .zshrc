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
eval $(keychain --eval --quiet id_ed25519 id_rsa)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/noah/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/noah/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/noah/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/noah/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

bindkey "^R" history-incremental-search-backward

# path
# or prepend
path=('/home/noah/.local/bin' $path)
# export to sub-processes (make it inherited by child processes)
export PATH
