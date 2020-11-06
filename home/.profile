# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH for cuda 10.1 installation
if [ -d "/usr/local/cuda-10.1/bin/" ]; then
    export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi

if [ -d "~/data/programs/NVIDIA-OptiX-SDK-6.5.0-linux64 " ]; then
    export PATH=/home/ax/data/programs/NVIDIA-OptiX-SDK-6.5.0-linux64${PATH:+:${PATH}}
fi


export EDITOR=/usr/bin/vim
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
export PATH="$HOME/data/programs/:$PATH"
export PATH=/opt/gcc-arm-none-eabi-6-2017-q2-update/bin:$PATH
export PATH=/home/ax/Projects/basteln/Tools/autotest:$PATH
export PATH=/home/ax/Programs/gcc-arm-none-eabi-6-2017-q2-update:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH

export PATH=/usr/lib/ccache:$PATH
