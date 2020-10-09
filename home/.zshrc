# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
alias torrent='aria2c --seed-ratio=0.1 --max-upload-limit=1K --seed-time=0'
alias openpdf='xdg-open'
alias manta="$HOME/Programs/manta/build/manta"

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

# source "$HOME/.homesick/repos/homeshick/homeshick.sh"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

eval $(thefuck --alias)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# AX: check if file exists then run 
# AX: __conda_setup="$('~/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ -f  $HOME/miniconda3/bin/conda ]; then
    eval "$($HOME/miniconda3/bin/conda shell.zsh hook)"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
export PATH=$HOME/Projects/basteln/Tools/autotest:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH

[[ ! -f /usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0 ]] || export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ ! -f $HOME/miniconda3/bin/activate.sh ]] || source $HOME/miniconda3/bin/activate.sh
[[ ! -f $HOME/Programs/mitsuba/setpath.sh ]] || source $HOME/Programs/mitsuba/setpath.sh
export PYTHONPATH="${PYTHONPATH}:$HOME/data/programs/mitsuba2/build/dist/python"
export CC=gcc
export CXX=g++
export HOST='localhost'

if [ -d /opt/hfs18.0.566 ]
then
	cd /opt/hfs18.0.566
	source houdini_setup -q
	cd - > /dev/null
fi

# custom imagemagick install path
#
if [ -d ~/Programs/imagemagick/bin ] 
then

	export PATH="$HOME/Programs/imagemagick/bin:$PATH"
fi
