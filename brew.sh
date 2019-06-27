#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install command line tools
brew install awscli
brew install bat
brew install diff-so-fancy
brew install elixir
brew install findutils
brew install fish
brew install git
brew install git-extras
brew install git-lfs
brew install gmp
brew install gnupg
brew install go
brew install httpie
brew install imagemagick
brew install jq
brew install node
brew install openssh
brew install openssl
brew install php
brew install screen
brew install tree

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

# Install app
brew cask install iterm2
brew cask install visual-studio-code
brew cask insall caffeine

# Remove outdated versions from the cellar.
brew cleanup
