source ~/.path
source ~/.aliases
source ~/.functions
source ~/.secrets

export LESS='-R'

#https://superuser.com/questions/117841/get-colors-in-less-or-more
export LESSOPEN='|~/.lessfilter %s'

# Z
. ~/bin/z.sh

# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)

export GO111MODULE=on
export GOPRIVATE=gitlab.messagebird.io

if [[ "$OSTYPE" == "darwin"* ]]; then
  export ZSH="/Users/paolo/.oh-my-zsh"
  ZSH_THEME="robbyrussell"
  plugins=(git git-open)
  source $ZSH/oh-my-zsh.sh

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  # . /etc/static/zshrc
  # . /Users/paolo/.nix-profile/etc/profile.d/nix.sh
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/completion.zsh.inc'; fi
