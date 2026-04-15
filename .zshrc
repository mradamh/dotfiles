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

export NODE_AUTH_TOKEN=$(security find-generic-password -a "$USER" -s "github_token" -w)

. /opt/homebrew/etc/profile.d/z.sh

function git_current_branch() {
  git rev-parse --abbrev-ref HEAD 2>/dev/null
}

alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ll="ls -FGlAhp"
eval "$(mise activate zsh)"
