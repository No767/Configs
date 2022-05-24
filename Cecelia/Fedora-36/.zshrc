if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# Aliases
alias github="cd '/mnt/d/GitHub Repos [Local]'"
# Antigen Plugins
source $HOME/.antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle zpm-zsh/colors
antigen bundle xylous/gitstatus
antigen bundle caarlos0/zsh-pg
antigen bundle zpm-zsh/title
antigen theme romkatv/powerlevel10k
antigen apply

source $ZSH/oh-my-zsh.sh
# Paths

export PATH="/home/noelle/.local/bin:$PATH"
# Env Variables
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"

# Start up Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# Start up Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv virtualenv-init -)"

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# Paths for pnpm
export PNPM_HOME="/home/noelle/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Load up Goenv
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# Load up Rust's Env
source $HOME/.cargo/env

# Load up Rust's Env
source $HOME/.cargo/env

# Load up Rust's Env
source $HOME/.cargo/env

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
