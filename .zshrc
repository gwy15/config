# export RUST_LOG="info,hyper=warn"

# Path to your oh-my-zsh installation.
export ZSH="/Users/bytedance/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=28

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    gitignore
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

bindkey  '\e[1~'   beginning-of-line
bindkey  '\e[4~'   end-of-line

alias sudo='sudo '
alias cls=clear
alias sc=screen
alias size='f(){ du -sh $1* | sort -hr; }; f'
alias count='ls -1 | wc -l'
alias now='date "+%Y-%m-%d %H:%M:%S"'
alias untar='tar xvf'
alias tab2space='sed "s/\t/    /g" -i.bak'
alias rg='rg --color=always '
alias py='python3'

export HOMEBREW_NO_AUTO_UPDATE=true
