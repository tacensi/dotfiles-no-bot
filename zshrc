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

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n $PS1 ] && \
    [ -s $BASE16_SHELL/profile_helper.sh ] && \
        source $BASE16_SHELL/profile_helper.sh

base16_espresso

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
  ag
  aliases
  archlinux
  colored-man-pages
  common-aliases
  composer
  docker
  extract
  git
  npm
  pip
  sublime
  symfony2
  thefuck
  wp-cli
  yarn
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
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
source /usr/share/nvm/init-nvm.sh

source $HOME/.dotfiles/z/alias.zsh
source $HOME/.dotfiles/z/wp.bash
source $HOME/.dotfiles/z/zsh.command-not-found


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

zshexit() {
  # commands to run here, e.g. if you 
  # always want to run .zlogout:
  if [[ ! -o login ]]; then
     # don't do this in a login shell
     # because it happens anyway
     . ~/.zlogout
  fi
}

