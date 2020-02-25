# Path to your oh-my-zsh installation.
export ZSH="/home/ax/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
export FZF_BASE=$HOME/.fzf
plugins=(git colorize npm pip python debian zsh-z  zsh-syntax-highlighting zsh-autosuggestions fzf)

source $ZSH/oh-my-zsh.sh

# AX conf
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
setopt extendedhistory

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning new agent… "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

eval $(thefuck --alias)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ax/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ax/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ax/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ax/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH=/usr/local/cuda-10.1/bin:$PATH 
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:/usr/local/cuda-10.1/extras/CUPTI/lib64:$LD_LIBRARY_PATH
export PATH=/home/ax/Projects/basteln/Tools/autotest:$PATH

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ ! -f $HOME/miniconda3/bin/activate.sh ]] || source $HOME/miniconda3/bin/activate.sh
