# TODO: Remove macOS specifics
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
PS1="Ṁ \W\e[2m\$(__git_ps1 \" %s\")\e[0m → "
