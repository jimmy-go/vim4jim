#!/bin/sh

echo "	Vim4Jim"
echo "	Vim settings for development in Go (golang)."

export INSTALL_DIR=$HOME/.vim4jim
# If working directory is not defined then use user's $HOME

Q="Do you want vim4jim to be installed on '$INSTALL_DIR'? [Y]es [N]o: "

while true; do
    read -p "$Q" yn
    case $yn in
        [Yy]* )
            # default action
            break;;
        [Nn]* ) echo "abort install"; exit;;
        * ) echo "$Q";;
    esac
done

echo "	Installing on: $INSTALL_DIR"

mkdir -p $INSTALL_DIR

# install vim-go
echo "	Cloning fatih/vim-go"
git clone https://github.com/fatih/vim-go.git $INSTALL_DIR/bundle/vim-go

# Install Vundle
echo "	Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git $INSTALL_DIR/bundle/Vundle.vim

# install YCM for all languages
echo "	Cloning YouCompleteMe"
git clone https://github.com/Valloric/YouCompleteMe.git $INSTALL_DIR/bundle/YouCompleteMe

echo "	Installing YouCompleteMe with support for all languages"
cd $INSTALL_DIR/bundle/YouCompleteMe

echo "	Downloading YCM third party, this can take a while"
git submodule update --init --recursive

BIN=$INSTALL_DIR/bundle/YouCompleteMe/install.py

## NOTE: Enable this section for debug.
if [ "$1" == "debug" ]; then
    echo "·WITH clang"
    $BIN --clang-completer
    echo "·WITH mono"
    $BIN --cs-completer
    echo "·WITH go"
    $BIN --go-completer
    echo "·WITH js"
    $BIN --js-completer
    echo "·WITH rust"
    $BIN --rust-completer
fi

echo "·WITH ALL"
$BIN --all

echo "	Install done"
