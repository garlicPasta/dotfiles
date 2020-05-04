# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk 
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=setting'
export EDITOR=vim
export PATH=/home/jakob/Downloads/rust-nightly-x86_64-unknown-linux-gnu/rustc/bin:$PATH
export PATH=/home/jakob/.cargo/bin:~/.local/bin/:$PATH
export PATH=usr/bin/:$PATH
export LD_LIBRARY_PATH=/home/jakob/Downloads/rust-nightly-x86_64-unknown-linux-gnu/rustc/lib
export WORKON_HOME=~/.virtualenvs

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 && $(pgrep -c xinit) -ne 1 ]]; then
  exec startx
fi

# NPM packages in homedir
NPM_PACKAGES="$HOME/.npm-packages/bin"
# Tell our environment about user-installed node tools
PATH="$NPM_PACKAGES:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your configuration
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Tell Node about these packages
export NODE_PATH="$HOME/.npm-packages/lib/node_modules:$NODE_PATH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias sus="systemctl suspend || i3lock -c 000000 "
 alias snow="shutdown now"
 alias rs="source ~/.zshrc"
 alias zshrc="vim ~/.zshrc"
 alias vimrc="vim ~/.vimrc"
 alias fiMe="find . -name"
 alias simpleHttp="python3 -m http.server"
 alias cclip="xclip -selection clipboard"
 alias pstars="wine .wine/drive_c/Program\ Files\ \(x86\)/PokerStars.EU/PokerStars.exe"
 alias mute="amixer set Master mute"
 alias unmute="amixer set Master unmute;amixer set Speaker unmute "
 alias prolog="swipl"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux sudo virtualenv virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

#export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH=$PATH:$HOME/scripts

if [ $(ps aux | grep i3  | wc | awk '{print $1}') -eq 2 ]
then
    hidpi_display="eDP-1-1"
    current_display=$(get_display.py)

    if [[ $hidpi_display == $current_display ]]
    then
        echo "HIDPI"
    else
        printf '\33]710;%s%d\007' "xft: xos4 Terminus:style=Medium:pixelsize=" 21
        printf '\33]711;%s%d\007' "xft: xos4 Terminus:style=Medium:pixelsize=" 20
    fi
fi
#--------------- Android Config ---------------------------------------------

export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/jakob/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/jakob/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/jakob/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/jakob/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/jakob/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/jakob/.npm-packages/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
source /usr/share/nvm/init-nvm.sh
