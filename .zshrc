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
  ZSH_THEME=""
  plugins=(git git-open)
  source $ZSH/oh-my-zsh.sh

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  # . /etc/static/zshrc
  # . /Users/paolo/.nix-profile/etc/profile.d/nix.sh

  # homebrew google cloud sdk
  # The next line updates PATH for the Google Cloud SDK.
  if [ -f '/Users/paolo/Downloads/gc/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/paolo/Downloads/gc/google-cloud-sdk/path.zsh.inc'; fi

  # The next line enables shell command completion for gcloud.
  if [ -f '/Users/paolo/Downloads/gc/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/paolo/Downloads/gc/google-cloud-sdk/completion.zsh.inc'; fi


  eval "$(pyenv init -)"
  eval "$(direnv hook zsh)"
fi

eval "$(starship init zsh)"