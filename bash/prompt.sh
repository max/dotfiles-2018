# TODO: Remove macOS specifics
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
  . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

RESET="\[\017\]"
NORMAL="\[\033[0m\]"
MUTED="\[\033[01;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
PS1="${RESET}${MUTED}\$${NORMAL} ${BLUE}\W${GREEN}\$(__git_ps1 \" %s\")${NORMAL} "
