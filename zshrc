# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.config/composer/vendor/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.npm/bin:$PATH

# Set a different custom folder to OhMyZShell
ZSH_CUSTOM=$HOME/.dotfiles/z/custom/;

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="tacensi"

# System specific configuration
case `uname` in
	Darwin)
		# commands for OS X go here
		# Path to your oh-my-zsh installation.
		export ZSH="$HOME/.oh-my-zsh"
		# Canary Alias
		alias canary="open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir=$HOME/profile-folder-name"
	;;
	Linux)
		# commands for Linux go here
		# Path to your oh-my-zsh installation.
		export ZSH="$HOME/.oh-my-zsh"
		# ABNT layout
		# setxkbmap -model abnt2 -layout br -variant abnt2
		setxkbmap us -variant intl
	;;
esac


HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob
bindkey -v

HIST_STAMPS="yyyy/mm/dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aliases
  archlinux
  colored-man-pages
  composer
  docker
  extract
  git
  npm
  pip
  sublime
  symfony2
  wp-cli
  yarn
  z
)

source $ZSH/oh-my-zsh.sh
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi=vim

if [ -f ~/.dotfiles/z/zsh.command-not-found ]; then
    . ~/.dotfiles/z/zsh.command-not-found
fi
