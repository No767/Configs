if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/noelle/.oh-my-zsh"

# Add ScreenDir Path to Fix Screen
export SCREENDIR=$HOME/.screen

# Program Paths
export PATH="/home/noelle/.local/bin:$PATH"     
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/noelle/pypy-c-jit-104940-8276b505180f-linux64/bin:$PATH"
export PATH="/home/noelle/.local/bin:$PATH"

# Program Aliases
alias pip="python3.10 -m pip"
alias python="python3.10"

# Set Path Aliases
alias rin="cd '/mnt/d/GitHub Repos [Local]/Rin'"
alias kumiko="cd '/mnt/d/GitHub Repos [Local]/Kumiko'"
alias aio-adns="cd '/mnt/d/GitHub Repos [Local]/AIO-ADNS'"
alias repos="cd '/mnt/d/GitHub Repos [Local]'"
alias github="cd '/mnt/d/GitHub Repos [Local]'"

# Set up Rbenv
eval "$(rbenv init -)"

# Stuff for code.org setup
export CHROME_BIN=$(which chromium-browser)

# Antigen Plugins
source $HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle zpm-zsh/colors
antigen bundle xylous/gitstatus
antigen theme romkatv/powerlevel10k
antigen apply

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
