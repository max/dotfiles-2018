# TODO: Move into Docker image and don't require locally
export GOPATH=~/Code/go
export PATH=$PATH:$(go env GOPATH)/bin

# Solarized colors
export FZF_DEFAULT_OPTS='
  --color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75
  --color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07
  --color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07
'

# TODO: Move into Docker image and alias to Docker image
if [ -f '/Users/max/Code/google-cloud-sdk/path.bash.inc' ]; then source '/Users/max/Code/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/max/Code/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/max/Code/google-cloud-sdk/completion.bash.inc'; fi
