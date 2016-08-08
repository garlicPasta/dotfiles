# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk 
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=setting'
export EDITOR=vim
export PATH=$PATH:~/.gem/ruby/2.2.0/bin:~/scripts
export PATH=/home/jakob/Downloads/rust-nightly-x86_64-unknown-linux-gnu/rustc/bin:$PATH
export LD_LIBRARY_PATH=/home/jakob/Downloads/rust-nightly-x86_64-unknown-linux-gnu/rustc/lib
source /usr/bin/virtualenvwrapper.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias update-time="sudo ntpd -qg"
 alias pokerstars="wine /home/jakob/.wine/drive_c/Program\ Files\ \(x86\)/PokerStars.EU/PokerStars.exe"
 alias sus="systemctl suspend || i3lock -c 000000 "
 alias youtube="youtube-viewer -video-player=mpv"
 alias snow="shutdown now"
 alias rs="source ~/.zshrc"
 alias zshrc="vim ~/.zshrc"
 alias vimrc="vim ~/.vimrc"
 alias fiMe="find . -name"
 alias simpleHttp="python3 -m http.server"
 alias run="runIndependent.sh > /dev/null"
 alias wstorm="jetbrains-webstorm"
 alias virtual_display="Xvfb :99 -screen 1 1920x1080x16 &; DISPLAY=:99"
 alias southpark="firefox www.southpark.de"
 alias cclip="xclip -selection clipboard"
 alias pstars="wine .wine/drive_c/Program\ Files\ \(x86\)/PokerStars.EU/PokerStars.exe"
 alias mute="amixer set Master mute"
 alias unmute="amixer set Master unmute;amixer set Speaker unmute "

# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(git archlinux sudo)

source $ZSH/oh-my-zsh.sh

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

# added by travis gem
[ -f /home/jakob/.travis/travis.sh ] && source /home/jakob/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
