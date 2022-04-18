# Enable Powerlevel10k instant prompt

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# Path Aliases
alias rin="cd '/mnt/d/GitHub Repos [Local]/Rin'"
alias kumiko="cd '/mnt/d/GitHub Repos [Local]/Kumiko'"
alias aio-adns="cd '/mnt/d/GitHub Repos [Local]/AIO-ADNS'"
alias repos="cd '/mnt/d/GitHub Repos [Local]'"
alias github="cd '/mnt/d/GitHub Repos [Local]'"

# Program Aliases 

alias python="python3.10"
alias pip="pip3.10"

# Program Paths
export PATH="/home/noelle/.local/bin:$PATH"
export PATH="~/gradle-7.4.2/bin:$PATH"
export PATH="~/kotlinc/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/home/noelle/.cargo/bin:$PATH"
export PATH="$HOME/.local/nvim/bin:$PATH"

# Antigen Plugins
source $HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle zpm-zsh/colors
antigen bundle xylous/gitstatus
antigen theme romkatv/powerlevel10k
antigen apply

# Rbenv Shell Setup
eval "$(rbenv init - zsh)"

# Set Ruby Shell
rbenv shell 3.1.1

# Open up Rust's Env
source $HOME/.cargo/env

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
