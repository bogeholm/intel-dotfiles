#! /usr/bin/env zsh
source logging.sh

# Conda
info "Updating Anaconda"
# conda update -n base -c defaults conda --yes
conda update -n base conda --yes
# https://stackoverflow.com/questions/51712693/packagenotinstallederror-package-is-not-installed-in-prefix
# conda update anaconda --yes

# Rust
info "Updating Rust"
rustup self update
rustup update stable

# Homebrew
info "Updating Homebrew"
brew update && brew upgrade
brew cleanup

# Cargo installed binaries
info "Updating Cargo packages"
cargo install-update -a

# https://pypa.github.io/pipx/docs/
info "Updating pipx packages"
pipx upgrade-all

info "Updateing global node packages"
npm update -g

# `tldr` index
info "Updating tldr index"
tldr --update

ok "Done!"

