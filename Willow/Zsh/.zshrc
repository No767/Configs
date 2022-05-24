if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/local/nvim/bin:$PATH"
export PATH="/home/noelle/.local/bin/:$PATH"
export PATH="/home/noelle/.local/bin:$PATH"
export PATH="/home/noelle/.pypy3.9/bin:$PATH"
source $HOME/.cargo/env
alias rin='cd $HOME/GitHub-Repos/Rin'
alias github='cd $HOME/GitHub-Repos'
alias pypy-pip="pypy-pip3"
source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle zpm-zsh/colors
antigen bundle xylous/gitstatus
antigen apply

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /home/noelle/GitHub-Repos/alacritty/extra/completions/alacritty.bash

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"

export PNPM_HOME="/home/noelle/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
