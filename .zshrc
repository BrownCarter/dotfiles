# If you come from bash you might have to change your $PATH.export PATH=$HOME/bin:/usr/local/bin:$PATH
export ANDROID_SDK=/home/brown/Android/Sdk
export FASTBOOT=/home/brown/Downloads/platform-tools
export P4MERGE=/home/brown/p4v/bin
export _JAVA_OPTIONS=-Xmx4256m
export SASS=/home/brown/dart-sass/
export DART=/home/brown/dart-sass/src
export MVN_HOME=/home/brown/Maven
export ROBO_3T=/home/brown/robo3t/bin
export HTML=/var/www/html
export NMAP_SCRIPT=/usr/share/nmap/scripts
export JAVA_JDK=/usr/share/doc/jdk-15/bin
export MSFDB=/usr/share/metasploit-framework/config/database.yml
export NODE=/home/brown/node/bin
export STUDIO_HOME=/home/brown/Android-Studio/bin
export GRADLE_BIN=/home/brown/gradle/bin
export SCALA_BIN=/home/brown/sbt/bin/
export GROOVY_BIN=/home/brown/groovy/bin
export MVN_BIN=/home/brown/Maven/bin
export PATH=/usr/local/bin:$SCALA_BIN:$P4MERGE:$JAVA_JDK:$FASTBOOT:$SASS:$DART:$ROBO_3T:$NODE:$GROOVY_BIN:$GRADEL_BIN:/usr/bin:/bin:/usr/local/games:/usr/games:/home/brown/.local/bin:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:~/.local/bin:/usr/local/lib/nodejs/bin:/snap/bin:$MVN_HOME:$MVN_BIN:~/.config/composer/vendor/bin:$STUDIO_HOME:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/brown/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
#ZSH_THEME="emotty"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "arrow" "amuse" "awesomepanda" )
##source "$HOME/.vim/autoload/gruvbox_256palette.sh"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
eval 'dircolors ~/.dircolors' > /dev/null
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         gradle
         mvn
         npm
         pip
         python
         tmux
         zsh_reload
         zsh-navigation-tools
         systemd
         systemadmin
         node
         nmap
         adb)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias c='clear'
alias cls='clear'
alias ohmyzsh="mate ~/.oh-my-zsh"
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ll='ls -lh'
alias editpic='display'
alias la='ls -lha'
alias l='ls -CF'
alias python=python3
alias em='emacs -nw'
alias dd='dd status=progress'
alias _='sudo'
alias _i='sudo -i'
alias please='sudo'
alias fucking='sudo'
alias synctime='sudo chronyd'
alias cast='asciinema play'
alias mouse='sudo modprobe -r psmouse && sudo modprobe psmouse'
fpath+=${ZDOTDIR:-~}/.zsh_functions
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
