export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

export UPDATE_ZSH_DAYS=28

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
alias dc='docker-compose'
alias x='HTTP_PROXY=127.0.0.1:7890 HTTPS_PROXY=127.0.0.1:7890 '
EXA=$(which exa)
if [[ -x "$EXA" ]]; then
    alias ls='exa'
else 
    echo "Warning: exa not found"
fi


export HOMEBREW_NO_AUTO_UPDATE=true
# export RUST_LOG="info,hyper=warn"
