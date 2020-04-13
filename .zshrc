ZSH=$HOME/.oh-my-zsh
ZSH_THEME="marmals"


# Prevent weekly auto updates.
DISABLE_AUTO_UPDATE=true

plugins=(history-substring-search web-search vi-mode colored-man-pages docker-compose docker-machine docker)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

#This require(?) android-studio. TODO: make so it checks if it is installed
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

npm set prefix ~/.npm
PATH+=":$HOME/.npm/bin"

# Sanity check for "rm *".
setopt RM_STAR_WAIT

# Use spelling correction.
#setopt CORRECT

# Prevent duplicates in history
setopt hist_ignore_all_dups hist_save_nodups

# Disable less history.
LESSHISTFILE=/dev/null

GPG_TTY=$(tty)
export GPG_TTY

umask 007

#eval `dircolors ~/.dir_colors/dircolors`
# Only show cwd in terminal
prompt_context() {}

source $HOME/.aliases
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias dotfiles='git --git-dir=/home/martin/dotfiles/ --work-tree=/home/martin'
