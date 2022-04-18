if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# Program Paths
export PATH="/home/noelle/.local/bin:$PATH"
export PATH="/home/noelle/.apache-maven-3.8.5/bin:$PATH"
export PATH="/home/noelle/.jdk-17.0.2+8/bin:$PATH"
export PATH="~/.gradle-7.4.2/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/noelle/.local/nvim/bin:$PATH"

# Path Aliases
alias rin="cd '/mnt/d/GitHub Repos [Local]/Rin'"
alias kumiko="cd '/mnt/d/GitHub Repos [Local]/Kumiko'"
alias aio-adns="cd '/mnt/d/GitHub Repos [Local]/AIO-ADNS'"
alias repos="cd '/mnt/d/GitHub Repos [Local]'"
alias github="cd '/mnt/d/GitHub Repos [Local]'"

source $HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle zpm-zsh/colors
antigen bundle xylous/gitstatus
antigen theme romkatv/powerlevel10k
antigen apply

# Open Up Rust's Env
source $HOME/.cargo/env

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PNPM_HOME="/home/noelle/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
