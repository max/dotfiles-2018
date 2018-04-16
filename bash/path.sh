# TODO: Move into Docker image and don't require locally
export GOPATH=~/Code/go
export PATH=$PATH:$(go env GOPATH)/bin

# TODO: Move into Docker image and don't require locally
export PATH="$HOME/.cargo/bin:$PATH"
