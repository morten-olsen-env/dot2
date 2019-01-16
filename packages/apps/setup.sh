if [ $(uname) = 'Darwin' ]; then
  brew tap caskroom/fonts
  brew tap caskroom/versions
  brew cask install \
    docker \
    slack \
    protonmail-bridge \
    tunnelblick \
    keybase \
    duet \
    veracrypt \
    gpg-suite \
    brave-browser \
    font-firacode-nerd-font \
    vlc
  brew install \
    slackcat \
    yarn \
    bitwarden-cli \
    watchman \
    ykman \
    fd \
    fzf \
    sshfs
fi
