setopt AUTO_CD
autoload -Uz compinit && compinit
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

autoload -U promptinit; promptinit
prompt spaceship

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Applications/RubyMine.app/Contents/MacOS":$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='rubymine --wait'
fi

. /opt/homebrew/etc/profile.d/z.sh

alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ll="ls -FGlAhp"
