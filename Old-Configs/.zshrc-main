export ZSH="/home/noelle/.oh-my-zsh"

# Add in Path for Rust

export PATH="$HOME/.cargo/bin:$PATH"

# Set Alias for Pip and Python
alias pip="python3.10 -m pip"
alias python="python3.10"

# Set Alias for LunarVim
alias lvim="/home/noelle/.local/bin/lvim"

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

source ~/.local/share/fonts/i_linux.sh
echo "Logged in as $USERNAME"

source $HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle smallhadroncollider/antigen-git-rebase
antigen bundle zpm-zsh/colors
antigen bundle xylous/gitstatus
antigen theme xylous/hydrogen
antigen apply

source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
