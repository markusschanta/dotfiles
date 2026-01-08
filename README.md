# dotfiles
my personal dotfiles, powered by https://git.io/dotbot

## Installation
To install, run:

    git clone https://github.com/markusschanta/dotfiles.git && cd dotfiles && ./install

### Updating dotfiles

To update ```dotbot```, run:

    git submodule update --remote dotbot

Be sure to commit the resulting changes before running ```./install```, otherwise the old version of Dotbot will be checked out by the install script.

## Manual setup steps

1. [Install homebrew](https://brew.sh/)
2. [Install bash as the default shell](https://stackoverflow.com/questions/77052638/changing-default-shell-from-zsh-to-bash-on-macos-catalina-and-beyond)

## Additional information

* [The right and wrong way to set Python 3 as default on a Mac](https://opensource.com/article/19/5/python-3-default-mac)