#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brew Installed"

brew install cask mongodb node postgresql rbenv
brew install autoconf gettext libpng node python@2 webp cabextract git libtiff openjpeg rbenv git-open libtool openssl readline winetricks docker libyaml p7zip ruby-build xz docker-compose little-cms2 pcre2 libsass yarn fortune icu4c mongodb pkg-config speedtest-cli zsh freetype imagemagick mysql postgresql sqlite zsh-completions gdbm jpeg ncurses python unrar

echo "Brew Libraries Installed"

brew cask install google-chrome slack alfred flycut opera spectacle xquartz aware gimp pgadmin4 spotify zoomus iterm2 postman timer calibre itsycal visual-studio-code cloudapp mongodb-compass skype vlc figma 

echo "Installed Development Programs"

brew services start mongodb
brew services start postgres

echo "Brew Services Start Complete"

echo "Installing Bash-it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
echo "Bash-It Complete"

echo "Add Code Script to Bash Profile"
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
