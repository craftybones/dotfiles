export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_UPDATE="true"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_PATH="short"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias vim="/usr/local/bin/mvim -v"
alias vimdiff="/usr/local/bin/mvimdiff -v"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Added by oh-my-vim
export PATH=$PATH:~/bin:~/mongo/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.local/bin/:$PATH"
eval "$(rbenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add GOPATH/bin to the environment
export PATH="$PATH:$HOME/go/bin"

export PATH=/Users/srijays/.rvm/gems/ruby-2.4.0/bin:/Users/srijays/.rvm/gems/ruby-2.4.0@global/bin:/Users/srijays/.rvm/rubies/ruby-2.4.0/bin:/Users/srijays/.rbenv/shims:/Users/srijays/.local/bin/:/Users/srijays/.rbenv/bin:/Users/srijays/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Users/srijays/bin:/Users/srijays/mongo/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/srijays/.rvm/bin:/Users/srijays/go/bin:/Users/srijays/bin
