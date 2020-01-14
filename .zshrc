source ~/.path
source ~/.aliases
source ~/.functions

export LESS='-R'

#https://superuser.com/questions/117841/get-colors-in-less-or-more
export LESSOPEN='|~/.lessfilter %s'

# Z
. ~/bin/z.sh

# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)

if [[ "$OSTYPE" == "darwin"* ]]; then
  export ZSH="/Users/paolo/.oh-my-zsh"
  ZSH_THEME="robbyrussell"
  plugins=(git git-open)
  source $ZSH/oh-my-zsh.sh

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  source /Users/paolo/.nix-profile/etc/profile.d/nix.sh
fi
